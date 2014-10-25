class HomeController < ApplicationController
	def home
	end
	def about
	end
	def search
		@topics = Topic.search params[:keywords]
	end
end