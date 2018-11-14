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

        desc 'create new agenda items'
        put do
             # AgendaMailer.agenda_email.deliver
             status 204
             # redirect_to(@user, :notice => 'user created')
        end
      end
    end
  end
end
