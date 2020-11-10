class Bug < ApplicationRecord
    has_many :user_bugs
    has_many :users, through: :user_bugs
    has_many :availability, as: :animal
end
