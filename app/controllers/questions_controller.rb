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
    # i = 5
    # i -= 1
    @next_question = Question.where(difficulty: @question.difficulty).where("id > ?", @question.id).first
    # if 
  end

end
