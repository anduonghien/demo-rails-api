class PostsController < ApplicationController
  def index
    render json: Post.all.select(:id, :title, :created_at)
  end
end
