class DefaultText < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  enum page: [:index, :materiaal, :contact, :training]
  # validates :page, uniqueness: {scope: [:order, :page]}
  validates :page, :uniqueness  => { :scope => :orderOnPage }
  # validates :zipcode, :uniqueness => {:scope => :recorded_at}
end
