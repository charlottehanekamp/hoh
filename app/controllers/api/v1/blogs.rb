module API
  module V1
    class Blogs < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :blogs do
        desc 'Show all blog items'
        paginate
        get do
          datetime = DateTime.now
          present Blog.order('created_at desc').where("date <= ?", datetime.to_formatted_s(:iso8601)).limit(10), with: BlogEntity
        end
      end
    end
  end
end
