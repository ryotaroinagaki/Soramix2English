class QuestionsController < ApplicationController
  before_action :reset_question_count, only: [:index, :difficulty]
  before_action :initialize_question_count, only: [:show, :explanation]
  
  def index
    @questions = Question.all
  end
  
  def show
    @question = Question.find(params[:id])
  end

  def difficulty
    @difficulty = params[:difficulty]
    @questions = Question.where(difficulty: Question.difficulties[@difficulty])
  end
  
  def explanation
    @question = Question.find(params[:id])
    @next_question = Question.where(difficulty: @question.difficulty).where("id > ?", @question.id).first
    @result = Result.where(user_id: current_user.id).last(1).first
    @true_answer = @question.choices.where(is_answer: true).first
    update_question_count
  end

  def result
    @result = Result.where(user_id: current_user.id).last(3)
    @true_count = @result.count { |result| result.result == true }
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
