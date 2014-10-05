class Quantity < ActiveRecord::Base
	has_many :quantity_topics
	has_many :topics, through: :quantity_topics
	validates :number, numericality: true
end