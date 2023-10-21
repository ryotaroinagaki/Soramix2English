class QuestionsController < ApplicationController
  before_action :reset_question_count, only: %i[index difficulty bookmarks questions]
  before_action :initialize_question_count, only: %i[show explanation result]
  before_action :set_question, only: %i[show explanation recommend recommend_explanation]
  before_action :set_explanation_question, only: %i[explanation recommend_explanation]
  before_action :set_recommend_questions, only: %i[index recommend_explanation]
  before_action :set_autocomplete_search, only: %i[search bookmarks_search]
  
  def index; end

  def questions
    query = params[:artist_name]
    @questions = Question.includes_music.sorted.page(params[:page])
    @questions = @questions.with_music.search_artist_name(query).sorted if query.present?
  end

  def bookmarks
    query = params[:artist_name]
    @questions = current_user.bookmarks_questions.order(created_at: :desc).includes_music.page(params[:page])
    return unless query.present?

    @questions = @questions.with_music.search_artist_name(query)
  end

  def search
    render_autocomplete
  end

  def bookmarks_search
    render_autocomplete
  end

  def show
    update_question_count
  end

  def difficulty
    @difficulty = params[:difficulty]
    @questions = Question.select_difficulty(@difficulty)
  end

  def explanation
    @next_question = Question.question_difficulty(@question).next(@question).first
  end

  def result
    if session[:total_questions] >= 1
      @result = Result.includes([question: :music]).where(user_id: current_user.id).last(session[:total_questions])
      @true_count = @result.count { |result| result.result == true }
    else
      @recommend_result = Result.where(user_id: current_user.id).last(session[:total_recommend_questions])
      @recommend_true_count = @recommend_result.count { |result| result.result == true }
    end

    @total_count = Result.where(user_id: current_user.id).count
  end

  def recommend
    update_recommend_question_count
  end

  def recommend_explanation
    @next_question = @recommend_questions.first
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def set_explanation_question
    @result = Result.where(user_id: current_user.id).last(1).first
    @true_answer = @question.choices.where(is_answer: true).first
    @random_question = Question.question_difficulty(@question).sample(1)
  end

  def set_recommend_questions
    @recommend_questions = recommend_questions
  end

  def set_autocomplete_search
    query = params[:q]
    @search_results = current_user.bookmarks_questions.includes_music.search_artist_name(query).pluck(:artist_name).uniq if action_name == 'bookmarks_search'
    @search_results = Question.all.includes_music.search_artist_name(query).pluck(:artist_name).uniq if action_name == 'search'
  end

  def render_autocomplete
    render partial: 'autocomplete', formats: :html
  end
#近しいユーザーを探す
  def find_similar_users
    bookmarked_question_ids = current_user.bookmarks_questions.pluck(:question_id)
    similar_user_ids = Bookmark.where(question_id: bookmarked_question_ids)
                               .where.not(user_id: current_user.id)
                               .distinct.pluck(:user_id)
    User.where(id: similar_user_ids)
  end
#近しいユーザーのブックマークからクイズを提案する 
  def recommend_questions
    bookmarked_question_ids = current_user.bookmarks_questions.pluck(:question_id)
    similar_users = find_similar_users
    similar_user_question_ids = Bookmark.where(user_id: similar_users.ids)
                                        .where.not(question_id: bookmarked_question_ids)
                                        .distinct.pluck(:question_id)
    recommended_question_ids = Question.where(id: similar_user_question_ids)
                                       .where.not(id: bookmarked_question_ids)
                                       .where.not(id: Result.where(user_id: current_user)
                                                          .distinct.pluck(:question_id))
                                       .pluck(:id)
    Question.where(id: recommended_question_ids).sample(3)
  end

  def initialize_question_count
    session[:total_questions] ||= 0
    session[:total_recommend_questions] ||= 0
  end

  def reset_question_count
    session[:total_questions] = 0
    session[:total_recommend_questions] = 0
  end

  def update_question_count
    session[:total_questions] += 1
  end

  def update_recommend_question_count
    session[:total_recommend_questions] += 1
  end
end
