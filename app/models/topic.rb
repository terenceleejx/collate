class Topic < ActiveRecord::Base
	has_and_belongs_to_many :topics, 
		join_table: "topic_connections",
		foreign_key: "topic_a_id",
		association_foreign_key: "topic_b_id"
	has_many :datasets
	has_many :quantity_topics
	has_many :quantities, through: :quantity_topics
	validates :name, uniqueness: true
end