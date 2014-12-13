class TopicsController < ApplicationController
	def show
		## ignores lowercase
		@topic = Topic.where("name ILIKE ?", "%#{params[:name]}%").take
		@quantities = Quantity.joins(:topics).where(topics: { id: @topic.id }).order(date: :desc).page params[:page]
	end
end