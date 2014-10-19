class ChartsController < ApplicationController
	layout "iframe", only: [:iframe]
	def show
		@chart = Chart.find(params[:id])
	end
	def iframe
	  @chart = Chart.find(params[:id])
	end
end