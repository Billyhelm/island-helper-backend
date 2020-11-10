class Availability < ApplicationRecord
    belongs_to :animal, polymorphic: true

end
