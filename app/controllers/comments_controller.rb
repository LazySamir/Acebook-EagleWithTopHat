class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @comment = Comment.new
    @post_id = params[:post_id]
  end

  def create
    @comment = Comment.create(message: params[:message], user_id: current_user.id, post_id: params[:post_id])
    redirect_to posts_url
  end


end
