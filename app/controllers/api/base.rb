module API
  class Base < Grape::API
    include API::Helpers::Auth
    include API::Helpers::Errors

    mount API::V1::Root

    add_swagger_documentation(
         base_path: "/api",
         hide_documentation_path: true
    )

    # This endpoint is used to keep the application alive and as a check if it's still running.
    get :ping do {time: Time.now} end
  end
end
