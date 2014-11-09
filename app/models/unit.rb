class Unit < ActiveRecord::Base
	has_many :quantities
	validates :name, uniqueness: true
	accepts_nested_attributes_for :quantities
end