module API
  module V1
    class Agendas < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :agendas do
        desc 'Show all agenda items'
        paginate
        get 'items' do
          present Agenda.order('start_at desc').limit(10), with: AgendaEntity
        end

        desc 'Check if agenda mailer workd'
        get 'mailer' do
             AgendaMailer.agenda_email.deliver
        end
      end
    end
  end
end
