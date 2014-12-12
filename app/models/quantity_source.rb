class QuantitySource < ActiveRecord::Base
	belongs_to :quantity
	belongs_to :source
end