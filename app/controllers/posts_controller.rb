class PostsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(message: post_params[:message], user_id: current_user.id)
    # redirect_to posts_url
    render json: @post
  end

  def index
    @posts = Post.all
    @users = User.all
    @comment = Comment.all
    @likes = Like.all
    render json: @posts
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
