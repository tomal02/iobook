class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_one_attached :avatar
end
