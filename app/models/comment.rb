class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :country

  has_many :likes, dependent: :destroy
  has_many :dislikes, dependent: :destroy

  has_many :replies, class_name: 'Comment', foreign_key: :reply_id
  belongs_to :parent, class_name: 'Comment', foreign_key: :reply_id, optional: true

  def get_commenter
    User.find(user_id)
  end
end
