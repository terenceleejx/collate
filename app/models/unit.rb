class Unit < ActiveRecord::Base
	belongs_to :quantities
	validates :name, uniqueness: true
end