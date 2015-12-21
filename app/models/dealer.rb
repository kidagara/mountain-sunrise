class Dealer < ActiveRecord::Base
	validates :name, 
			  :city,
			  :state,
			  :phone_number, presence: true
end