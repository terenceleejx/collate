class QuantityType < ActiveRecord::Base
	searchkick
	has_many :quantities
	validates :name, uniqueness: true
end