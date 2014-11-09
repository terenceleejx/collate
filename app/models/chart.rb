class Chart < ActiveRecord::Base
	serialize :colors
	has_many :chart_datasets
	has_many :datasets, through: :chart_datasets
	validates :name, presence: true
	belongs_to :chart_type
	belongs_to :user
end