class Villager < ApplicationRecord
    has_many :user_villagers
    has_many :users, through: :user_villagers
end
