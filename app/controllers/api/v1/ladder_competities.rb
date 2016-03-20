module API
  module V1
    class LadderCompetities < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari
      helpers API::Helpers::SharedParams

      params do
        use :auth_params
      end

      before do
        authenticate!
      end

      resource :ladder_competities do
        desc 'Show current_users ladder_competities'
        paginate
        get do
          present current_user.ladder_competities.order('created_at desc'), with: LadderCompetitieEntity
        end

        desc 'Show current_user average total'
        get "average" do
          present current_user, with: LadderCompetitieAverageEntity, average: current_user.ladder_competities.select(:total, :arrows_hit, :arrows_shot)
        end
      end
    end
  end
end
