class LocationEntity < Grape::Entity
  expose :name
  expose :content_one
  expose :content_two
  expose :url
  expose :image
  expose :orderOnPage
end
