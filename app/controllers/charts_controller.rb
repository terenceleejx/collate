class ChartsController < ApplicationController
	layout "embed", only: [:embed]
	def show
		@chart = Chart.find(params[:id])
	end
	def embed
	  @chart = Chart.find(params[:id])
	end
end