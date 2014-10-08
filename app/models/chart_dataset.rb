class ChartDataset < ActiveRecord::Base
	belongs_to :chart
	belongs_to :dataset
end