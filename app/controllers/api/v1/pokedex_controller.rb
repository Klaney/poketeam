module Api
	module V1
		class PokedexController < ApplicationController
			respond_to :json
			def index
				respond_with Pokedex.all
			end
		end
	end
end