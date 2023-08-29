class ResultsController < ApplicationController
  def create
    # formのデータを取得
    # if フォームのデータがコレクトなら正解（chiceのis_answerがtureのものをだったら）
    #   reslutsテーブルのresultにtrue
    #   @question = Question.find(params[:question_id])
    #   current_user.currect_result(@question)
    # else フォームのデータがfalseなら不正解（chiceのis_answerがfalseのものをだったら）
    #   reslutsテーブルのresultにfalse
    #   @question = Question.find(params[:question_id])
    #   current_user.uncurrect_result(@question)
    # end
  end
end
