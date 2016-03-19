class PokemonController < ApplicationController
	def create
		@pokemon = Pokemon.create(pokemon_params[:name], pokemon_params[:pokeid], pokemon_params[:team_id])
		if @pokemon
			redirect_to "#!/team"
			flash[:success] = "Pokemon added"
		else
			redirect_to "#!/team"
			flash[:danger] = "You have too many pokemon in the team!"
		end
	end

	private

	def pokemon_params
	  params.require(:pokemon).permit(:name, :pokeid, :team_id)
	end
end