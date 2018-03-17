class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy, foreign_key: 'Blog_id'
  has_many :favorite_users, through: :favorites, source: :user
    validates :content, length: {minimum:1}
    validates :content, length: {maximum:140}
  mount_uploader :image, ImageUploaderUploader
end
