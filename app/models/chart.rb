class Chart < ActiveRecord::Base
	#One chart can have many datasets for multi-series charts
	validates :name, presence: true
end