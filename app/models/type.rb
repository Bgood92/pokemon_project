class Type < ApplicationRecord
  validates :name, presence: true
  validates :name, format: { with: /\A[A-Z][a-z]*\z/ }
  validates :name, uniqueness: true

  has_many :pokemon_types
  has_many :pokemons, through: :pokemon_types
end
