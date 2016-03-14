class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :pokedexes, :type, :maintype
  end
end
