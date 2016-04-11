module Api
	module V1
		class PokedexController < ApplicationController
			respond_to :json
			def index
				respond_with Pokedex.all.order("id") 
			end
		end
	end
end