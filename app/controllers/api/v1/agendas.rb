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
          @agendas=[]
          Location.all.each do |l|
               @agendas.push(Agenda.order('start_at asc').where('location_id = ?', l.id).where("start_at >= ?", datetime.to_formatted_s(:iso8601)).select('title, content, start_at, end_at, location_id').limit(5))
          end
          @agendas
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
      end
    end
  end
end
