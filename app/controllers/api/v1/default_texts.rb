module API
  module V1
    class DefaultTexts < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :default_text do
        desc 'Get text'
        params do
          requires :page, type: String, desc: 'Which page does the text goes on?'
        end
        get do
          present DefaultText.where("page = ?", DefaultText.pages[params[:page]]).order('created_at desc'), with: DefaultTextEntity
        end
      end
    end
  end
end
