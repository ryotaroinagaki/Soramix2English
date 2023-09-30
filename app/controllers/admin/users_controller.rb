class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all.order(id: :desc)
  end

  def show
    @user = User.find(params[:id])
  end
  
  def destory
    @user.destroy!
    redirect_to admin_users_path, success: t('defaults.message.deleted', item: User.model_name.human)
  end
end
