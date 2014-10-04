class Source < ActiveRecord::Base
	has_many :quantities
	validates :title, uniqueness: true
end