class DislikesController < ApplicationController
  include SessionsHelper

  before_action :find_comment, :can_dislike

  def create
    @comment.dislikes.create(user_id: current_user.id)
    redirect_back(fallback_location: root_url)
  end

  private

  def find_comment
    @comment = Comment.find(params[:comment_id])
  end

  def can_dislike
    if !logged_in? || @comment.dislikes.exists?(user_id: current_user.id)
      redirect_back(fallback_location: root_url)
    end
  end
end
