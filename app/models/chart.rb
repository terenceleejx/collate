class Chart < ActiveRecord::Base
	has_many :chart_datasets
	has_many :datasets, through: :chart_datasets
	validates :name, presence: true
end