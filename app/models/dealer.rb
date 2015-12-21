class Dealer < ActiveRecord::Base
	validates :store_name, 
			  :city,
			  :state,
			  :phone_number, presence: true
end