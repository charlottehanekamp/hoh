module API
  module V1
    class Locations < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :location do
        desc 'Get text'
        get do
          present Location.order(:orderOnPage), with: LocationEntity
        end
      end
    end
  end
end
