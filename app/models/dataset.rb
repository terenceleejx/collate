class Dataset < ActiveRecord::Base
	has_many :quantity_datasets
	has_many :quantities, through: :quantity_datasets
	has_many :chart_datasets
	has_many :charts, through: :chart_datasets
	validates :name, presence: true
	belongs_to :user
	belongs_to :topic
	# validation to check that their units are the same?
end