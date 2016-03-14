class SessionsController < ApplicationController

	before_action :current_user
	before_action :is_authenticated?, except: [:create]

  def new
  end

  def create
  	@user = User.authenticate user_params[:email], user_params[:password]
  	if @user
	    cookies[:user_id] = @user.id
	    flash[:success] = "User logged in!!"
	    redirect_to root_path
	  else
	    flash[:danger] = "create method Credentials Invalid!!"
	    redirect_to root_path
	  end
  end

  def destroy
  	cookies.delete :user_id
  	flash[:danger] = "User logged out"
  end

  private

	def user_params
	  params.require(:user).permit(:email, :password)
	end
end
