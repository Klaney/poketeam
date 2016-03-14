class AddNumberToPokedex < ActiveRecord::Migration
  def change
  	add_column :pokedexes, :pokedex_num, :integer
  end
end
