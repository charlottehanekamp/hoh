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
          present current_user, with: UserEntity
          AgendaMailer.monthly_mail(current_user.email).deliver
        end

        params do
          use :auth_params
        end

        before do
          authenticate!
        end
        desc 'Update user profile'
        params do
        optional :first_name, type: String
        optional :last_name, type: String
        optional :email, type: String
        optional :birth_date, type: String
        optional :weight, type: Integer
        optional :height, type: Integer
        optional :content, type: String
        optional :image, type: Rack::Multipart::UploadedFile
        optional :password, type: String
        given :password do
          requires :password_confirmation, type: String
        end
      end
      put do
        user_params = declared(params.except(:token), include_missing: false)
        error!(current_user.errors,422) unless current_user.update(user_params)
        present current_user, with: UserEntity
      end


      end
    end
  end
end
