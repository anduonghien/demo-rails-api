class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: Response.success(@posts)
  end

  def show
    @post = Post.find_by_id(params[:id])
    result = 
      if @post.present?
        Response.success(@post)
      else
        Response.error("Not exits")
      end
    render json: result
  end
end
