module API
  module V1
    class Blogs < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :blogs do
        desc 'Show all blog items'
        paginate
        get do
          present Blog.order('created_at desc').limit(10), with: BlogEntity
        end
      end
    end
  end
end
