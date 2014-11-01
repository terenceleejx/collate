class Quantity < ActiveRecord::Base
	searchkick
	def search_data
		{
			topic_name: topics.map(&:name),
			number: number,
			date: date
		}
	end
	has_many :quantity_topics
	has_many :topics, through: :quantity_topics
	has_many :quantity_datasets
	has_many :datasets, through: :quantity_datasets
	validates :number, numericality: true
end