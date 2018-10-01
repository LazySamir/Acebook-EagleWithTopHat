class LikesController < ApplicationController

  def create
    post = Post.find(params[:post_id])

    if like = Like.find_by(post_id: post.id, user_id: current_user.id)
      like.destroy
    else
      like = Like.new(user_id: current_user.id, post_id: post.id)
      like.save
    end

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:like).permit(:post_id)
  end

end
