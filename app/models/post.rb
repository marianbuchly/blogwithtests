class Post < ActiveRecord::Base
  belongs_to :admin
  has_and_belongs_to_many :categories
  has_many :likes
  validates_presence_of :title, :body

  mount_uploader :image, ImageUploader
end
