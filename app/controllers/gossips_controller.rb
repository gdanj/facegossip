class GossipsController < ApplicationController
  def index
  	@gossi = Gossip.all
  end

  def new
  	@goss = Gossip.new
  end

  def create
  	g = Gossip.new
    g.user_id = User.last.id
    g.title = params["gossip"][:title]
    g.content = params["gossip"][:content]
	g.save
	redirect_to "/gossips"
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end

  def edit
  	@gossip = Gossip.find(params[:id])
  end

  def update
  	@gossip = Gossip.find(params[:id])
  	post_new = params.require(:gossip).permit(:title, :content)
  	@gossip.update(post_new)
  	redirect_to "/gossips"
  end

  def destroy
  	@gossip = Gossip.find(params[:id])
  	@gossip.destroy
  	redirect_to "/gossips"
  end
end
