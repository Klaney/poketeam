class PokedexController < ApplicationController

	def index
		@pokedex = Pokedex.all
		respond_to do |format|
			format.html
			format.json {render json: @pokedex}
		end
	end
	def new
		# i = 1
  # 	num = 152
  # 	while i < num do
  # 		request = Typhoeus::Request.new("http://pokeapi.co/api/v2/pokemon/#{i}/",
  # 																		method: :get)
  # 		response = request.run
		#  	pokemon = JSON.parse(response.response_body)
		#  	# puts pokemon["stats"][0]["base_stat"]
		#  	if !pokemon["types"][1]
		#  		Pokedex.create(
		#  		pokemon["name"], 
		#  		pokemon["sprites"]["front_default"], 
		#  		pokemon["stats"][0]["base_stat"], 
		#  		pokemon["stats"][1]["base_stat"], 
		#  		pokemon["stats"][2]["base_stat"], 
		#  		pokemon["stats"][3]["base_stat"], 
		#  		pokemon["stats"][4]["base_stat"], 
		#  		pokemon["stats"][5]["base_stat"], 
		#  		pokemon["types"][0]["type"]["name"],
		#  		nil,
		#  		pokemon["id"]
		#  		)
		#  	else
		# 	 	Pokedex.create(
		# 	 		pokemon["name"], 
		# 	 		pokemon["sprites"]["front_default"], 
		# 	 		pokemon["stats"][0]["base_stat"], 
		# 	 		pokemon["stats"][1]["base_stat"], 
		# 	 		pokemon["stats"][2]["base_stat"], 
		# 	 		pokemon["stats"][3]["base_stat"], 
		# 	 		pokemon["stats"][4]["base_stat"], 
		# 	 		pokemon["stats"][5]["base_stat"], 
		# 	 		pokemon["types"][1]["type"]["name"],
		# 	 		pokemon["types"][0]["type"]["name"],
		# 	 		pokemon["id"]
		# 	 	)
		# 	end
 	# 		i+=1
  # 	end
	end

  def create
  	# i = 0
  	# num = 152
  	# while i < 152 do
  		# request = Typhoeus::Request.new("http://pokeapi.co/api/v2/pokemon/#{i}/")
  		# puts request
  		# request.on_complete do |response|
  		# 	if response.success?
  		# 		puts request
  		# 	elsif response.code == 0
  		# 		puts response.return_message
  		# 	else 
  		# 		puts "HTTP request failed"
  		# 	end
 			# end
  	# end
  	# @entry = Pokedex.create(entry_params[:name], entry_params[:sprite], entry_params[:speed], entry_params[:sdefense], entry_params[:sattack], entry_params[:defense], entry_params[:attack], entry_params[:hp], entry_params[:type], entry_params[:subtype])
  	# if @entry
  	# 	flash[:success] = "pokemon created"
  	# else
  	# 	flash[:danger] = "pokedex didn't update"
  	# end
  end
end