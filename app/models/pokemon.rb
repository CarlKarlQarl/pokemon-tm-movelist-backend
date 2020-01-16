class Pokemon < ApplicationRecord
    has_many :movelists
    has_many :technical_machines, through: :movelists
end
