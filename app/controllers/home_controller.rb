class HomeController < ApplicationController
	def home
	end
	def about
	end
	def search
		@keywords = params[:keywords]
	end
end