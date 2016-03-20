module API
  module Helpers
    module Defaults
      extend ActiveSupport::Concern

      included do
        version 'v1'
        format :json
        default_error_status 422
      end

    end
  end
end
