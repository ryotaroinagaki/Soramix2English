class Admin::MusicsController < Admin::BaseController
  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_paramas)
    if @music.save
      redirect_to new_admin_question_path, success: t('.success')
    else
      flash.now[:error] = t('.fail')
      render :new
    end
  end

  private

  def music_paramas
    params.require(:music).permit(:id, :music_name, :artist_name, :year)
  end
end