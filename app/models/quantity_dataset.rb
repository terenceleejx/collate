class QuantityDataset < ActiveRecord::Base
	belongs_to :quantity
	belongs_to :dataset
end