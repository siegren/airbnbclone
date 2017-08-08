class Adddetailstousers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :fullname, :string
    add_column :users, :address, :string
    add_column :users, :phonenum, :string
    add_column :users, :avatar, :string
  end
end
