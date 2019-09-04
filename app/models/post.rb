class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates  :content, presence: true
  validates  :title, presence: true
  validates  :image, presence: true
  validates :content, length: { maximum: 140 }
end
