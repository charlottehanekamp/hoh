module API
  module Helpers
    module Errors
      extend ActiveSupport::Concern
      included do
        #TODO: Add error formatter?
        #TODO: Add error logger?
        # error_formatter :json, API::ErrorFormatter
        #TODO: Check http://codetunes.com/2014/grape-part-II/

        # global handler for simple not found case
        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

        rescue_from CanCan::AccessDenied do |e|
          error_response(message: e.message, status: 403)
        end

        # global handler for API validation errors, not our fault
        rescue_from Grape::Exceptions::ValidationErrors do |e|
          error_response(message: e.message, status: 400)
        end

        # global exception handler, used for error notifications
        rescue_from :all do |e|
          if Rails.env.development? || Rails.env.test?
            raise e
          else
            NewRelic::Agent.notice_error(e)
            error_response(message: "Internal server error", status: 500)
          end
        end # rescue_from all
      end
    end
  end
end
