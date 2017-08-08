class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.string :location
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
