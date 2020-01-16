class TechnicalMachine < ApplicationRecord
    has_many :movelists
    has_many :pokemons, through: :movelists
end
