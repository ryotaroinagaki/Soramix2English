class ResultsController < ApplicationController
  def create
    choice = Choice.find(params[:id])
    user = current_user
    result = Result.create_result(choice, user)

    if session[:total_recommend_questions] > 0
      redirect_to recommend_explanation_question_path(choice.question)
    else
      redirect_to explanation_question_path(choice.question)
    end
  end
end