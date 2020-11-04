class User < ApplicationRecord
    has_many :user_fishes 
    has_many :user_bugs
    has_many :user_villagers
    has_many :fishes, through: :user_fishes
    has_many :bugs, through: :user_bugs
    has_many :villagers, through: :user_villagers
end
