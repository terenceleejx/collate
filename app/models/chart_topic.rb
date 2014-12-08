class ChartTopic < ActiveRecord::Base
	belongs_to :chart
	belongs_to :topic
end