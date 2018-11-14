class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     def agenda_email
          @user = params[:user]
          mail(to: @user.email, subject: 'Agenda')
     end
end
