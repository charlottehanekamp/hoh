class Picture < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  belongs_to :gallery
end
