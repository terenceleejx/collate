class HomeController < ApplicationController
	def home
	end
	def about
	end
	def search
		@quantities = Quantity.search params[:keywords], page: params[:page], per_page: 20
	end
end