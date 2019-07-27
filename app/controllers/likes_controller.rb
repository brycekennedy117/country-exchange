class LikesController < ApplicationController
  include SessionsHelper

  before_action :find_comment, :can_like

  def create
    @comment.likes.create(user_id: current_user.id)
    redirect_back(fallback_location: root_url)
  end

  private

  def find_comment
    @comment = Comment.find(params[:comment_id])
  end

  def can_like
    if !logged_in? || @comment.likes.exists?(user_id: current_user.id)
      redirect_back(fallback_location: root_url)
    end
  end
end
