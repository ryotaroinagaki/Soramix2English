class Admin::LyricsController < ApplicationController
  def new
    @lyric = Lyric.new
    @question = Question.last
  end

  def create
    @lyric = Lyric.new(lyric_params)
    if @lyric.save
      redirect_to new_admin_choice_path , success: '成功'
    else
      flash.now[:danger] = '失敗しました'
      render :new
    end
  end

  private

  def lyric_params
    params.require(:lyric).permit(:question_id, :lyric)
  end
end
