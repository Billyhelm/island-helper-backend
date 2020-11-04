class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :town_name
      t.string :hemisphere

      t.timestamps
    end
  end
end
