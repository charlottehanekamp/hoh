module API
  class Base < Grape::API
    include API::Helpers::Auth
    include API::Helpers::Errors

    mount API::V1::Root

    # This endpoint is used to keep the application alive and as a check if it's still running.
    get :ping do {time: Time.now} end
  end
end
