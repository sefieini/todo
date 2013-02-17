class TasksController < ApplicationController
  before_filter proc { redirect_to '/' }, :unless => :current_user

  def index
  end
end
