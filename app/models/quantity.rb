class Quantity < ActiveRecord::Base
	searchkick
	has_many :quantity_topics
	has_many :topics, through: :quantity_topics
	has_many :quantity_datasets
	has_many :datasets, through: :quantity_datasets
	validates :number, numericality: true
end