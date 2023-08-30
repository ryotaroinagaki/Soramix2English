class ResultsController < ApplicationController
  def create
    choice = Choice.find(params[:id])
    user = current_user 
    if choice.is_answer
      user.results.create(question: choice.question, result: true)
    else 
      user.results.create(question: choice.question, result: false)
    end
    redirect_to explanation_question_path(choice.question)
  end
end
