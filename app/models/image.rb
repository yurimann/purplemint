class Image < ApplicationRecord
  has_attached_file :avatar
  validates :avatar, attachment_presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage/
  
end
