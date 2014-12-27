class TopicsController < ApplicationController
	def show
		## ignores lowercase
		@topic = Topic.where("name ILIKE ?", "%#{params[:name]}%").take
		@quantities = Quantity.joins(:topics).where(topics: { id: @topic.id }).order(date: :desc).page(params[:page]).per(10)
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