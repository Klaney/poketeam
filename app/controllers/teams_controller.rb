class TeamsController < ApplicationController

	before_action :current_user
	before_action :is_authenticated?

	def index
		@teams = Team.all
	end

  def new
  	@team = Team.new
  end

  def create
  	@team = Team.create(team_params[:name], cookies[:user_id])
  	if @team
  		redirect_to "#!/team"
  	else
  		flash[:danger] = "Enter a valid name!!"
  	end
  end

  def show
  	@team = Team.find params[:id]
  end

  def edit
  	@team = Team.find params[:id]
  end

  def destroy
  	Team.find(params[:id]).delete
  	redirect_to"#!/team"
  end



  private

	def team_params
	  params.require(:team).permit(:name)
	end
end
