class Like < ApplicationRecord
  belongs_to :user
  belongs_to :comment

  def already_liked?
    Like.where(user_id: @current_user.id, comment_id:
        params[:comment_id]).exists?
  end
end
