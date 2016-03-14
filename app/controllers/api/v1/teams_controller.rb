module Api
	module V1
		class TeamsController < ApplicationController
			respond_to :json
			def index
				respond_with Team.all
			end
		end
		class PokedexesController < ApplicationController
			respond_to :json
			def index
				respond_with Pokedex.all
			end
		end
	end
end