class UserController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.create(user_params[:email], user_params[:password], user_params[:name])
    if @user
    	@user = User.authenticate user_params[:email], user_params[:password]
    	cookies[:user_id] = @user.id
	    flash[:success] = "User logged in!!"
      redirect_to root_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      redirect_to signup_path
    end
  end

  private

	def user_params
	  params.require(:user).permit(:email, :password, :name)
	end
end
