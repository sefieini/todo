class SessionsController < ApplicationController
  def sign_in
    session[:user_id] = User.find_or_create_by_email(params[:email]).try(:id) if params[:email]
    redirect_to '/tasks' if current_user
  end

  def sign_out
    session[:user_id] = nil
    redirect_to '/sessions/sign_in'
  end
end
