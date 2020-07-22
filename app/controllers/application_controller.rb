class ApplicationController < ActionController::Base
  include ApplicationHelper
  def require_user
    unless logged_in?
      flash[:alert] = "You must be logged in to perfotm that action!"
      redirect_to login_path
    end
  end
end
