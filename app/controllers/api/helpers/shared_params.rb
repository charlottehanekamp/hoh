module API
  module Helpers
    module SharedParams
      extend Grape::API::Helpers

      params :auth_params do
        requires :token, type: String, desc: 'API access token'
      end
    end
  end
end
