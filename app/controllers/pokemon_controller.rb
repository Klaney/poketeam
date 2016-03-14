class PokemonController < ApplicationController
	def create
		@pokemon = Pokemon.create(pokemon_params[:name], pokemon_params[:pokeid], pokemon_params[:team_id])
		if @pokemon
			flash[:success] = "Pokemon added"
		else
			flash[:danger] = "Shit didn't work"
		end
	end

	private

	def pokemon_params
	  params.require(:pokemon).permit(:name, :pokeid, :team_id)
	end
end