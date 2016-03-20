module API
  module V1
    class Users < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari
      helpers API::Helpers::SharedParams



      resource :users do
        desc 'Show member profiles'
        paginate
        get 'leden' do
          present paginate(User.where.not("content = ?", "").where("user_type = ?", User.user_types[:lid])), with: UserProfileEntity
        end

        desc 'Show member profiles'
        paginate
        get 'bestuur' do
          present paginate( User.where.not("content = ?", "").where("user_type = ?", User.user_types[:bestuur]).order('functie asc') ), with: UserProfileEntity
        end

        params do
          use :auth_params
        end

        before do
          authenticate!
        end
        desc 'Show specific user profile'
        get do
          # user = User.find(params[:user_id])
          present current_user, with: UserEntity
        end
      end
    end
  end
end
