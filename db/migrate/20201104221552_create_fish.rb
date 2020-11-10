class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :price
      t.string :price_cj
      t.string :catch_phrase
      t.string :description
      t.string :image
      t.string :image_cute

      t.timestamps
    end
  end
end
