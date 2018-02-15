class Pokemon < ApplicationRecord
  validates :pokedex, :name, presence: true
  validates :stats_total, :hp, :attack, :defense, :sp_atk, :sp_def, :speed, numericality: { greater_than_or_equal_to: 0 }

  has_many :pokemon_types
  has_many :types, through: :pokemon_types
  belongs_to :generation
end
