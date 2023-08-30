class OnBoardingsController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def edit; end
  
  def update
    if @user.update(user_params)
      redirect_to questions_path, success: t('defaults.message.register', item: User.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_register', item: User.model_name.human)
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:name, :avatar, :avatar_cache)
  end
end
