module API
  module V1
    class Galleries < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :gallery do
        desc 'Get gallery'
        get do
          present Gallery.all, with: GalleryEntity
        end
      end
    end
  end
end
