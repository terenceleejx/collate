class ChartsController < ApplicationController
	def show
		@chart = Chart.find(params[:id])
	end
end