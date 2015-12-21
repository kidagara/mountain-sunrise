class Dealer < ActiveRecord::Base
	validates :name, presence: true
end