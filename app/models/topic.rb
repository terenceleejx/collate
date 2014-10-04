class Topic < ActiveRecord::Base
	has_many :category_topics
	has_many :categories, through: :category_topics
	has_many :quantity_topics
	has_many :quantities, through: :quantity_topics
	validates :name, uniqueness: true
end