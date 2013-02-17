class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  before_filter :set_current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

    def set_current_user
      User.current = User.find_by_id(session[:user_id])
    end
end
