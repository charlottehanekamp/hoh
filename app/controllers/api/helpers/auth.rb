module API
  module Helpers
    module Auth
      extend ActiveSupport::Concern
      included do
        helpers do
          def authorize!(*args)
            current_ability.authorize!(*args)
          end

          def current_ability
            @current_ability ||= ::Ability.new(current_user)
          end

          def authenticate!
            error!('Unauthorized. Invalid or expired token.', 401) unless current_user
          end # authenticate!

          def current_user
            # find token. Check if valid.
            params[:token] ||= request.headers['X-Api-Token']
            token = AccessKey.find_by_access_token( params[:token] )
            if token && !token.expired?
              token.update_expiry
              @current_user = User.find(token.user_id)
            else
              false
            end
          end # current_user

        end # helpers
      end # included
    end # Auth
  end # Helpers
end
