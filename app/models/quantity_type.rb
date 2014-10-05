class QuantityType < ActiveRecord::Base
	has_many :quantities
	validates :name, uniqueness: true
end