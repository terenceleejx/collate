class HomeController < ApplicationController
	def home
	end
	def about
	end
	def search
		@quantities = Quantity.search params[:keywords], page: params[:page], per_page: 20
		@quantity = Quantity.new
	end
	def clone
		Quantity.create(quantity_params)
	end
	private
		def quantity_params
			params.require(:quantity).permit(:number, :user_id)
		end
end