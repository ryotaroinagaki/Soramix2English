class GoogleLoginApiController < ApplicationController
  require 'googleauth/id_tokens/verifier'
  require 'securerandom'
  protect_from_forgery except: :callback
  before_action :verify_g_csrf_token
  skip_before_action :require_login, only: %i[callback]

  def callback
    random_name = SecureRandom.hex(2)
    random_password = SecureRandom.hex(5)
    payload = Google::Auth::IDTokens.verify_oidc(params[:credential], aud: '323169411967-dfj3chkg4vh838qf8pr72782f3ebmfl4.apps.googleusercontent.com')
    if user = User.find_by(email: payload['email'])
      session[:user_id] = user.id
      redirect_to questions_path, notice: t('.success')
    else
      user = User.new(email: payload['email'], name: random_name, password: random_password, password_confirmation: random_password)
      if user.save
        session[:user_id] = user.id
        redirect_to on_boardings_path(user), notice: t('.require_change')
      else
        redirect_to login_path, notice: t('.fail')
      end
    end
  end

  private

  def verify_g_csrf_token
    if cookies["g_csrf_token"].blank? || params[:g_csrf_token].blank? || cookies["g_csrf_token"] != params[:g_csrf_token]
      redirect_to root_path, alert: t("message.no_authority")
    end
  end
end