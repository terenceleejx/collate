class TopicsController < ApplicationController
	def show
		@topic = Topic.where("name ILIKE ?", "%#{params[:name]}%").take
	end
end