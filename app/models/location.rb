class Location < ActiveRecord::Base
     mount_uploader :image, PhotoUploader
     has_many :agendas, :class_name => 'Agenda', :foreign_key => 'location_id'
     validates_uniqueness_of :orderOnPage
end
