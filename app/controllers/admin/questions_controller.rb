class Admin::QuestionsController < Admin::BaseController
  def index
    @questions = Question.all.includes(:music)
  end

  def new
    @question = Question.new
    @music = Music.last
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to new_admin_lyric_path , success: '成功'
    else
      flash.now[:danger] = '失敗しました'
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def destory
  end

  private

  def question_params
    params.require(:question).permit(:music_id, :youtube_id, :youtube_start_time,:youtube_end_time, :difficulty, :commentary, :japanese)
  end
end
