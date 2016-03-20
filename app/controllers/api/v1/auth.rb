module API
  module V1
    class Auth < Grape::API
      include API::Helpers::Defaults
      helpers API::Helpers::SharedParams
      helpers Grape::Devise::Helpers
      include Grape::Devise::Endpoints

      resources :auth do

        desc "Retrieve an API token with valid credentials."
        params do
          requires :email, type: String, desc: 'User email'

          requires :password, type: String, desc: 'User password'
          optional :expires_after, type: Integer, desc: 'How many days the token will be valid. Defaults to 1 day.'
        end
        post do
          user = User.find_by_email(params[:email])

          if user && user.valid_password?(params[:password])
            sign_in(user)
            key = AccessKey.create({user: user, expires_after: params[:expires_after]})
            cookies[:login] = { value: "XJ-122", expires: 1.hour.from_now }
            present key, with: AccessKeyEntity
          else
            error!('401 Unauthorized, invalid credentials.', 401)
          end
        end

        desc 'Register a new user'
        params do
          requires :email, type: String, desc: 'User email'
          requires :password, type: String, desc: 'User password'
          requires :password_confirmation, type: String, desc: 'User password confirmation'
        end
        post 'register' do
          user = User.new({
            email: params[:email],
            password: params[:password],
            password_confirmation: params[:password_confirmation]
          })
          error!(user.errors) unless user.save
          status 204
        end

        desc 'Password forgotten'
        params do
          requires :email, type: String, desc: 'User email'
        end
        post 'password_forgotten' do
          user = User.find_by_email(params[:email])
          error!('404, User does not exist', 404) if user.nil?
          status 204  if user.send_reset_password_instructions
        end

        desc 'Resend confirmation email'
        params do
          requires :email, type: String, desc: 'User email'
        end
        post 'confirmation' do
          user = User.find_by_email(params[:email])
          unless user && user.confirmed?
            user.send_confirmation_instructions
            return status 204
          else
            error!('Email is already confirmed', 200)
          end
        end

        desc "Destroy an api token"
        params do
          use :auth_params
        end
        delete do
          key = AccessKey.find_by_access_token( params[:token] )
          error!("404 Key doesnt exists", 404) if key.nil?
          error!(key.errors) unless key.destroy
          status :no_content
        end

      end
    end
  end
end
