class PokedexesTeams < ActiveRecord::Base
  belongs_to :pokedex
  belongs_to :team
end
