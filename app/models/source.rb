class Source < ActiveRecord::Base
	has_many :quantities
	validates :title, uniqueness: true
	accepts_nested_attributes_for :quantities
end