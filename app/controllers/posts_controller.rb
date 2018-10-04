class PostsController < ApplicationController

  def new(post = Post.new)
    @post = post
  end

  def create(post = Post.create(message: post_params[:message], user_id: post_params[:user_id]))
    @post = post
    render json: @post
  end

  def index(posts = Post.all)
    @posts = posts
    render json: @posts
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end
end
