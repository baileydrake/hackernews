class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
  @comment = Comment.new(params[:comment])
  end
end
