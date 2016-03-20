module API
  module V1
    class Agendas < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :agendas do
        desc 'Show all agenda items'
        paginate
        get do
          present Agenda.order('start_at desc').limit(10), with: AgendaEntity
        end
      end
    end
  end
end
