class LinksController < ApplicationController
    def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to()
    else
      render 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def index
    @links = Link.order(vote: :desc)
  end

  def update
    @links = Link.all
    @link = Link.find(params[:id])
    @link.update(link_params)
    redirect_to("/links")
  end

  private
  def link_params
    params.require(:link).permit(:user_link, :title, :vote)
  end
end
