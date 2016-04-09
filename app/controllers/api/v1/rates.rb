module API
  module V1
    class Rates < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :rates do
        desc 'Show all rates'
        paginate
        get do
          present Rate.all, with: RateEntity
        end
      end
    end
  end
end
