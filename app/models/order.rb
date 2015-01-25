class Order < ActiveRecord::Base
	validates :address, :city, :state, presence: true

	# Every order belongs to a singel listing
	belongs_to :listing

	# We tell rails that buyer and seller are type of User by typeing class
	belongs_to :buyer, class_name: "User"
	belongs_to :seller, class_name: "User"
end
