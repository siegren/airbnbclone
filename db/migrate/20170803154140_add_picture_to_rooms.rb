class AddPictureToRooms < ActiveRecord::Migration[5.1]
  def self.up
    change_table :rooms do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :rooms, :picture
  end
end
