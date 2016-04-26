class GalleryEntity < Grape::Entity
  expose :title
  expose :location
  expose :date_at
  expose :pictures, using: PictureEntity
end
