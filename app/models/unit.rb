class Unit < ActiveRecord::Base
	has_many :quantities
	validates :name, uniqueness: true
end