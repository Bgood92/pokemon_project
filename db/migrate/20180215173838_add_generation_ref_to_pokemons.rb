class AddGenerationRefToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_reference :pokemons, :generation, foreign_key: true
  end
end
