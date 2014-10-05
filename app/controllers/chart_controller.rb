class ChartController < ApplicationController
	def new
		@quantity = Quantity.all
	end
end