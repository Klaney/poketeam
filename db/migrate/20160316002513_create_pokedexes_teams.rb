class CreatePokedexesTeams < ActiveRecord::Migration
  def change
    create_table :pokedexes_teams do |t|
      t.references :pokedex, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
