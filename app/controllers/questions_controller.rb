class QuestionsController < ApplicationController
  before_action :reset_question_count, only: %i[index difficulty bookmarks questions]
  before_action :initialize_question_count, only: %i[show explanation result]
  before_action :set_question, only: %i[show explanation recommend recommend_explanation]

  def index
    @recommend_questions = recommend_questions
  end

  def questions
    query = params[:artist_name]
    @questions = Question.includes(:music).page(params[:page])
    if query.present?
      @questions = @questions.joins(:music).where('artist_name LIKE ?', "%#{query}%")
    end
  end

  def search
    query = params[:q]
    @search_results = Question.all.includes([:music]).where('artist_name LIKE ?', "%#{query}%").pluck(:artist_name)
    render partial: "autocomplete", formats: :html
  end

  def show
    update_question_count
  end

  def difficulty
    @difficulty = params[:difficulty]
    @questions = Question.where(difficulty: Question.difficulties[@difficulty])
  end

  def explanation
    @next_question = Question.where(difficulty: @question.difficulty).where('id > ?', @question.id).first
    @result = Result.where(user_id: current_user.id).last(1).first
    @true_answer = @question.choices.where(is_answer: true).first
    @ramdom_question = Question.where(difficulty: @question.difficulty).sample(1)
  end

  def bookmarks
    @questions = current_user.bookmarks_questions.order(created_at: :desc).includes([:music]).page(params[:page])
  end

  def result
    @result = Result.includes([question: :music]).where(user_id: current_user.id).last(session[:total_questions])
    @true_count = @result.count { |result| result.result == true }
    @recommend_result = Result.where(user_id: current_user.id).last(session[:total_recommend_questions])
    @recommend_true_count = @recommend_result.count { |result| result.result == true }
    @total_count = Result.where(user_id: current_user.id).count
  end

  def recommend
    update_recommend_question_count
  end

  def recommend_explanation
    @recommend_questions = recommend_questions
    @second_question = @recommend_questions.second
    @third_question = @recommend_questions.third
    @result = Result.where(user_id: current_user.id).last(1).first
    @true_answer = @question.choices.where(is_answer: true).first
    @ramdom_question = Question.where(difficulty: @question.difficulty).sample(1)
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def find_similar_users
    bookmarked_question_ids = current_user.bookmarks_questions.pluck(:question_id)
    similar_user_ids = Bookmark.where(question_id: bookmarked_question_ids)
                               .where.not(user_id: current_user.id)
                               .distinct.pluck(:user_id)
    User.where(id: similar_user_ids)
  end

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
