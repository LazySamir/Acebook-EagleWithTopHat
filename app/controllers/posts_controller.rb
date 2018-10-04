class PostsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(message: post_params[:message])
    render json: @post
  end

  def index
    @posts = Post.all
    render json: @posts
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
