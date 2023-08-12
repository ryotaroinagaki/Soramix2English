class QuestionsController < ApplicationController
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

  def answer
    @question = Question.find(params[:id])
  end

  def explanation
    @question = Question.find(params[:id])
  end

  def next_question
    # Logic to get the next question goes here
    redirect_to question_path(next_question)
  end

end
