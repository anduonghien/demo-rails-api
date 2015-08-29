class CommentsController < ApplicationController
  def index
    @comments = 
      if params[:post_id]
        Post.find(params[:post_id]).comments
      else
        Comment.all
      end
    render json: @comments
  end

  def show
    @comment = 
      if params[:post_id]
        Post.find(params[:post_id]).comments.find(params[:id])
      else
        Comment.find(params[:id])
      end

    render json: @comment
  end
end
