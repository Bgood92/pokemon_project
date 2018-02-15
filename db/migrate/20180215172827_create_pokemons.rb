class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.integer :pokedex
      t.string :name
      t.integer :stats_total
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :sp_atk
      t.integer :sp_def
      t.integer :speed

      t.timestamps
    end
  end
end
