class PagesController < ApplicationController
  skip_before_action :require_login, only: %i[privacy terms]

  def privacy; end

  def terms; end
end
