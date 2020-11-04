class CreateUserFishes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_fishes do |t|
      t.integer :user_id
      t.integer :fish_id

      t.timestamps
    end
  end
end
