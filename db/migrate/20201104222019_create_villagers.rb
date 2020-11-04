class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :personality
      t.string :birthday_string
      t.string :birthday
      t.string :hobby
      t.string :saying
      t.string :icon
      t.string :image
      t.string :bubble_color
      t.string :text_color
      t.string :species
      t.string :gender

      t.timestamps
    end
  end
end
