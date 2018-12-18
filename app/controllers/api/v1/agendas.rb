module API
  module V1
    class Agendas < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari

      resource :agendas do
        desc 'Show all agenda items'
        paginate
        get 'items' do
          datetime = DateTime.now
          present Agenda.order('start_at asc').where("start_at >= ?", datetime.to_formatted_s(:iso8601)).limit(5), with: AgendaEntity
        end
        # desc 'Check if agenda mailer worked'
        # get 'mailer' do
        #      AgendaMailer.agenda_email.deliver
        # end
      end
    end
  end
end
