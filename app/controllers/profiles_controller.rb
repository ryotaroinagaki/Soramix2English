class ProfilesController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def show
    @count = @user.results.count
    @level = @count / 5
    @next_level = 5 - (@count % 5)
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path, success: t('.success')
    else
      flash.now[:error] = t('.fail')
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :name, :avatar)
  end
end
