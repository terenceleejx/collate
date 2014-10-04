class Category < ActiveRecord::Base
	#has_many :category_topics
	#has_many :topics, through: :category_topics
	validates :name, uniqueness: true
end