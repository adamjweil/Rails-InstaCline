# require 'pry'

class Photo < ActiveRecord::Base
  # belongs_to :user
  has_many :comments
  has_many :likes

  has_attached_file :photo, :styles => {:medium => "600x600 >", :thumb => "100x100 >"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def set_image(image_type, b64)
    StringIO.open(Base64.decode64(b64)) do |data|
      data.class.class_eval { attr_accessor :original_filename, :content_type }
      data.original_filename = 'file.jpeg'
      data.content_type = image_type
      self.photo = data
    end
  end

  def photo_url
    self.photo.url
  end
end
