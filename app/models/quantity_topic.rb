class QuantityTopic < ActiveRecord::Base
	belongs_to :topic
	belongs_to :quantity
end