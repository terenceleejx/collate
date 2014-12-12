class Source < ActiveRecord::Base
	has_many :quantity_sources
	has_many :quantities, through: :quantity_sources
	validates :title, uniqueness: true
	accepts_nested_attributes_for :quantities
end