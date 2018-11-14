module API
  module V1
    class LadderRankings < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari
      helpers API::Helpers::SharedParams

      # params do
      #   use :auth_params
      # end
      #
      # before do
      #   authenticate!
      # end

      resource :ladder_rankings do
        desc 'Show current ranking'
        paginate
        get do
          present LadderRanking.order('rank asc').all, with: LadderRankingEntity
        end

      end
    end
  end
end
