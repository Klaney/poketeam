class CreatePokedexes < ActiveRecord::Migration
  def change
    create_table :pokedexes do |t|
      t.string :name
      t.string :sprite
      t.integer :speed
      t.integer :sdefense
      t.integer :sattack
      t.integer :defense
      t.integer :attack
      t.integer :hp
      t.string :type
      t.string :subtype

      t.timestamps null: false
    end
  end
end
