class ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  protect_from_forgery
  helper_method :current_user_name

  def current_user_name
    return current_user.email.split('@').first
  end
end
