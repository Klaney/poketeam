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
  	redirect_to "#!/team"
  end

  def update
  	@team = Team.find pokemon_params[:team_id]
  	pokedex = Pokedex.find_by pokedex_num: pokemon_params[:pokeid]
  	if @team.pokedexes.size == 6
  		flash[:danger] = "You have reached the maximum amount of pokemon"
  		redirect_to "#!/team"
  	else
  		@team.pokedexes << pokedex
	  	redirect_to "#!/team"
  	end
  end

  def destroy_pokedex
  	team = Team.find(team_params[:id])
  	pokemon = Pokedex.find pokemon_params[:pokeid]
  	team.pokedexes.delete(pokemon)
  	redirect_to "#!/team"
  end



  private

	def team_params
	  params.require(:team).permit(:name, :id)
	end

	def pokemon_params
	  params.require(:pokemon).permit(:name, :pokeid, :team_id)
	end
end
