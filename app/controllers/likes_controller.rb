class LikesController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    current_user.like(question)
    redirect_to explanation_question_path(question)
  end

  def destroy
    question = current_user.likes_questions.find(params[:question_id])
    current_user.unlike(question)
    redirect_to explanation_question_path(question), status: :see_other
  end
end