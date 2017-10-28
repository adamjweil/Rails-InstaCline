class User < ActiveRecord::Base
  # has_many :photos
  has_many :comments
  has_many :likes

  has_attached_file :avatar, :styles => {:medium => "300x300 >", :thumb => "100x100 >"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # has_many :relationships, foreign_key: :following_id
  # has_many :followings, through: :relationships, source: :user

  has_secure_password
end
