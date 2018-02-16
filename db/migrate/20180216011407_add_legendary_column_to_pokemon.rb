class AddLegendaryColumnToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :legendary, :boolean
  end
end
