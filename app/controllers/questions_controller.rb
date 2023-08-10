class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def show
    @question = Question.find(3)
  end
  
  def difficulty
    @questions = Question.all
  end

  def answer
    @question = Question.find(3)
  end

  def explanation
    @question = Question.find(3)
  end
end
