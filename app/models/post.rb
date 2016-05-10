class Post < ActiveRecord::Base
  belongs_to :user
  has_many :categrories
  has_many :likes
  validates_presence_of :title, :body

  mount_uploader :image, ImageUploader
end
