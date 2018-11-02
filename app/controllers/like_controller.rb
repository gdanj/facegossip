class LikeController < ApplicationController

	def new
		redirect_to "/gossips"
	end
	def create
		@gossips = Gossip.find(params[:gossip_id])
		@like = @gossips.likes.create(params[:like])
		redirect_to "/gossips"
	end
end
