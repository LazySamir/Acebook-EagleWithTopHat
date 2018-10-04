class PostsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    # @post = Post.create(post_params)
    # @post = Post.create(message: post_params[:message])
    @post = Post.create(message: post_params[:message], user_id: current_user.id)
    # redirect_to posts_url
    render json: @post
  end

  def index
    @posts = Post.all
    # json_response(@posts)
    render json: @posts
    # @users = User.all
    # @comment = Comment.all
    # @likes = Like.all
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
