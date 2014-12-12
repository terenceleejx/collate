class TopicsController < ApplicationController
	def show
		## ignores lowercase
		@topic = Topic.where("name ILIKE ?", "%#{params[:name]}%").take
	end
end