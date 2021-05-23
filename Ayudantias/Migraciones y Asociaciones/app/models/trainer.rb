class Trainer < ApplicationRecord
    has_many :pokemons, dependent: :destroy
end
