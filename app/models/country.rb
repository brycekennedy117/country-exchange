class Country < ApplicationRecord
  belongs_to :continent, optional: true
  has_many :cities, dependent: :destroy
  has_many :comments, dependent: :destroy
end
