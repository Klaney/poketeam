class UserController < ApplicationController
  def new
  	@user = User.new
  end
  def create
    @user = User.create(user_params[:email], user_params[:password])
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#{@user}"
    if @user
    	@user.save
      redirect_to @client
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      redirect_to signup_path
    end
  end
  # def create
  # 	@user = User.create user_params[:email], user_params[:password] 
  # 	# user_params[:email], user_params[:password]
  # 	redirect_to root_path
  # end

  private

	def user_params
	  params.require(:user).permit(:email, :password)
	end
end
