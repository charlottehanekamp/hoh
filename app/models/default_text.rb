class DefaultText < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  enum page: [:index, :materiaal, :contact, :training, :locaties]
  # validates :page, uniqueness: true
end
