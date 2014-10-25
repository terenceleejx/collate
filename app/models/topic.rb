class Topic < ActiveRecord::Base
	searchkick
	has_many :sub_topics, class_name: "Topic",
												foreign_key: "category_id"
	belongs_to :category, class_name: "Topic"
	has_many :datasets
	has_many :quantity_topics
	has_many :quantities, through: :quantity_topics
	validates :name, uniqueness: true
end