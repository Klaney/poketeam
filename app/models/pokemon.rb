class Pokemon < ActiveRecord::Base
  belongs_to :team
  def self.create name, pokeid, team_id
  	@pokemon = Pokemon.new
  	@pokemon.name = name
  	@pokemon.pokeid = pokeid
  	@pokemon.team_id = team_id
  	@pokemon.save
  end
end
