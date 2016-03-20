module API
  module V1
    class Root < Grape::API

      mount API::V1::Agendas
      mount API::V1::Auth
      mount API::V1::Blogs
      mount API::V1::LadderCompetities
      mount API::V1::Users

      add_swagger_documentation api_version: 'v1', hide_documentation_path: true


    end
  end
end
