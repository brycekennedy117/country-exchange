class PostsController < ApplicationController
  def create
    @discussion = Discussion.find(params[:discussion_id])
    @post = @discussion.posts.create(post_params)
    redirect_to discussion_path(@discussion)
  end

  def update
  end

  def destroy
    @discussion = Discussion.find(params[:discussion_id])
    @post = @discussion.posts.find(params[:id])
    @post.destroy
    redirect_to discussion_path(@discussion)
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end
