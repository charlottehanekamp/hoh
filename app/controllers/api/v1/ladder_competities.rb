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
          lc = (current_user.ladder_competities + LadderCompetitie.where(shot_against: current_user))
          present lc, with: LadderCompetitieEntity
        end

        desc 'Show current_user average total'
        get "average" do

          present current_user, with: LadderCompetitieAverageEntity, u_average: current_user.ladder_competities.select(:u_total, :u_arrows_hit, :u_arrows_shot, :shot_at), sa_average: LadderCompetitie.where(shot_against: current_user).select(:sa_total, :sa_arrows_hit, :sa_arrows_shot, :shot_at)
        end

        desc 'Show current_user average total'
        get "stats" do
          present current_user, with: LadderCompetitieStatsEntity, u_stats: current_user.ladder_competities.select(:u_total, :u_arrows_hit, :u_arrows_shot), sa_stats: LadderCompetitie.where(shot_against: current_user).select(:sa_total, :sa_arrows_hit, :sa_arrows_shot)
        end


      end
    end
  end
end
