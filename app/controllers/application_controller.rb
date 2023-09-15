class ApplicationController < ActionController::Base
  add_flash_types :success, :error
  before_action :require_login
end
