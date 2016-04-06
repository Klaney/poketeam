class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :set_csrf_cookie_for_ng

	def set_csrf_cookie_for_ng
	  cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
	end

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

  protected

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

end
