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
		clone = original.deep_clone :include => [:topics, :sources]
		clone.parent_id = params[:quantity][:id]
		clone.user_id = current_user.id
		clone.save
		sleep 2
		respond_to do |format|
  		format.js {render inline: "location.reload();" }
		end
	end
end