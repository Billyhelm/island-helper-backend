class CreateAvailabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :availabilities do |t|
      t.string :monthNorthern
      t.string :monthSouthern
      t.string :time 
      t.boolean :isAllDay
      t.boolean :isAllYear
      t.string :location
      t.string :rarity
      t.references :animal, polymorphic: true

      t.timestamps
    end
  end
end
