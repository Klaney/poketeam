module Api
	module V1
		class TeamsController < ApplicationController
			respond_to :json
			def index
				@teams = Team.all
				respond_to { |format|
					format.json {render :json => @teams.to_json(:include => :pokedexes)}
				}
			end
		end
	end
end