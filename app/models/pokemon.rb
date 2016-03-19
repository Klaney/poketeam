class Pokemon < ActiveRecord::Base
  belongs_to :team
  validates_associated :team, :message => "You have too many pokemon"
  def self.create name, pokeid, team_id
  	@pokemon = Pokemon.new
  	@pokemon.name = name
  	@pokemon.pokeid = pokeid
  	@pokemon.team_id = team_id
  	@pokemon.save
  end
end
