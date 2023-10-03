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
      redirect_to new_admin_lyric_path, success: t('.success')
    else
      flash.now[:error] = t('.fail')
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question.destroy!
    redirect_to admin_questions_path, success: "問題を削除しました"
  end

  private

  def question_params
    params.require(:question).permit(:music_id, :youtube_id, :youtube_start_time,:youtube_end_time, :difficulty, :commentary, :japanese)
  end
end
