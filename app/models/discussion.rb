class Discussion < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  accepts_nested_attributes_for :posts
end
