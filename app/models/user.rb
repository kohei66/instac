class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :name, presence:true, length:{ maximum:30 }
  validates :email, presence:true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save{ email.downcase! }
  has_secure_password
  validates :password, presence:true, length: { minimum: 6 }
  mount_uploader :image, ImageUploaderUploader
end