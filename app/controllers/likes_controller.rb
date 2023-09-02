class LikesController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    current_user.like(question)
    redirect_back fallback_location: explanation_question_path(question)
  end

  def destroy
    question = current_user.likes_questions.find(params[:question_id])
    current_user.unlike(question)
    redirect_back fallback_location: explanation_question_path(question)
  end
end
