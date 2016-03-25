class DefaultText < ActiveRecord::Base
  mount_uploader :image, PhotoUploader 
  enum page: [:index, :todo, :contact]
  validates :page, uniqueness: true
end
