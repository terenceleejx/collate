class ChartController < ApplicationController
	def new
		@chart = Chart.all
	end
end