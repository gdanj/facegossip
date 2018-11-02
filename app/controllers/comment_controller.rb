class CommentController < ApplicationController
	def create
		@gossip = gossip.find(params[:gossip_id])
		@comment = @gossip.comments.create(params[:comment]).permit(:content)
		redirect_to '/'
	end
end
