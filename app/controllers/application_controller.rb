class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
  	
  end

  def is_authenticated?
    unless current_user
      flash[:danger] = "is_authenticated Credentials Invalid!!"
      redirect_to root_path
    end
  end

  def current_user
    @current_user ||= User.find_by_id(cookies[:user_id])
  end
end
