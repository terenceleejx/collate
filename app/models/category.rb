class Category < ActiveRecord::Base
	has_many :category_topics
	has_many :topics, through: :category_topics
	#Each dataset has a primary category
	has_many :datasets
	validates :name, uniqueness: true
end