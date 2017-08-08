class Room < ApplicationRecord
	  has_attached_file :picture, :styles => { :medium => "300x300>",:small => "60x60>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
geocoded_by :location
after_validation :geocode, :if => :location_changed?
ratyrate_rateable 'name'
end
