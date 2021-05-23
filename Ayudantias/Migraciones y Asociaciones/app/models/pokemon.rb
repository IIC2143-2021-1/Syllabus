class Pokemon < ApplicationRecord
    belongs_to :trainer
    has_and_belongs_to_many :movements
end
