class ChartType < ActiveRecord::Base
	has_many :charts
	accepts_nested_attributes_for :charts
end