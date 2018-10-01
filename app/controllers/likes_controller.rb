class LikesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    like = Like.new(user_id: current_user.id, post_id: post.id)
    like.save
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:like).permit(:post_id)
  end

end
