class User < ApplicationRecord
  has_secure_password
  has_many :likes
  has_many :dislikes

  has_many :friends, class_name: 'User', foreign_key: :friend_id
  belongs_to :owner, class_name: 'User', foreign_key: :friend_id, optional: true

  has_many :received, class_name: 'Friendrequest', foreign_key: 'receiver_id'
  has_many :requests, class_name: 'Friendrequest', foreign_key: 'requester_id'
end
