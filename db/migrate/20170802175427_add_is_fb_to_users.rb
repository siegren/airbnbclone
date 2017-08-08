class AddIsFbToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_fb, :boolean
  end
end
