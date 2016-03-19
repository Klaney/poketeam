class Team < ActiveRecord::Base
	has_many :pokemon
	has_and_belongs_to_many :pokedexes
	validates_each :pokemon do |team, attr, value|
		team.errors.add attr, "too many pokemon for user" if team.pokedexes.size > 6
  end
  belongs_to :user

  def self.create name, user_id
  	@team = Team.new
  	@team.name = name
  	@team.user_id = user_id
  	@team.save
  end
end
