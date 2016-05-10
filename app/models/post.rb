class Post < ActiveRecord::Base
  belongs_to :user
  has_many :categrories
  validates_presence_of :title

  mount_uploader :image, ImageUploader
end
