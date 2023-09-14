class BookmarksController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    current_user.bookmark(question)
    redirect_to explanation_question_path(question)
  end

  def destroy
    question = current_user.bookmarks_questions.find(params[:question_id])
    current_user.unbookmark(question)
    redirect_to explanation_question_path(question), status: :see_other
  end
end
