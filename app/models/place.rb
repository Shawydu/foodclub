class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :photos
	
	validates :name, :presence => { :message => "How can people know it without Name" }, :length => { :minimum => 3}
	validates :address, :presence => { :message => "It must be located somewhere" }
	validates :description, :presence => { :message => "Enter something for people get well know this place" }

	geocoded_by :address
	after_validation :geocode
end
