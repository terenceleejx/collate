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
		original = Quantity.find(params[:quantity][:id])
		clone = original.amoeba_dup
		clone.parent_id = params[:quantity][:id]
		clone.user_id = current_user.id
		clone.save
	end
end