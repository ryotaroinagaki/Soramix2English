class QuestionsController < ApplicationController
  before_action :reset_question_count, only: %i[index difficulty bookmarks]
  before_action :initialize_question_count, only: %i[show explanation result]

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    update_question_count
  end

  def difficulty
    @difficulty = params[:difficulty]
    @questions = Question.where(difficulty: Question.difficulties[@difficulty])
  end

  def explanation
    @question = Question.find(params[:id])
    @next_question = Question.where(difficulty: @question.difficulty).where('id > ?', @question.id).first
    @result = Result.where(user_id: current_user.id).last(1).first
    @true_answer = @question.choices.where(is_answer: true).first
    @ramdom_question = Question.where(difficulty: @question.difficulty).sample(1)
  end

  def bookmarks
    @questions = current_user.bookmarks_questions.includes([:music])
  end
  
  def result
    @result = Result.where(user_id: current_user.id).last(3)
    @true_count = @result.count { |result| result.result == true }
    @total_count = Result.where(user_id: current_user.id).count
  end

  private

  def initialize_question_count
    session[:total_questions] ||= 0
  end

  def reset_question_count
    session[:total_questions] = 0
  end

  def update_question_count
    session[:total_questions] += 1
  end
end
