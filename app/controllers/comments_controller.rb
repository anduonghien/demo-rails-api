class CommentsController < ApplicationController
  def index
    @comments = 
      if params[:post_id]
        Post.find_by_id(params[:post_id]).try(:comments)
      else
        Comment.all
      end
    result = 
      if @comments.present?
        Response.success(@comments)
      else
        Response.error("Not exits")
      end
    render json: result
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
