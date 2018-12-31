module API
  module V1
    class Agendas < Grape::API
      include API::Helpers::Defaults
      include Grape::Kaminari
      helpers API::Helpers::SharedParams

      resource :agendas do
        desc 'Show all agenda items'
        paginate
        get 'items' do
          datetime = DateTime.now
          present Agenda.order('start_at asc').where("start_at >= ?", datetime.to_formatted_s(:iso8601)).limit(10), with: AgendaEntity
        end


        params do
          use :auth_params
        end
        before do
          authenticate_admin!
        end
        desc 'Send Agenda emails'
        get 'sendMail' do
             # Agenda.monthly_update
             @users = User.all
             @users.each do |u|
                  AgendaMailer.monthly_mail(u).deliver_now
             end
             return status 204
        end
        # desc 'Check if agenda mailer worked'
        # get 'mailer' do
        #      AgendaMailer.agenda_email.deliver
        # end
      end
    end
  end
end
