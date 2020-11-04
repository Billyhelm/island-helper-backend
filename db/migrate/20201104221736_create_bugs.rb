class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.string :name
      t.string :availability
      t.string :price
      t.string :price_flick
      t.string :catch_phrase
      t.string :description
      t.string :image
      t.string :image_cute

      t.timestamps
    end
  end
end
