class Generation < ApplicationRecord
  validates :gen, :region, presence: true
  validates :gen, numericality: {greater_than: 0}

  has_many :pokemons
end
