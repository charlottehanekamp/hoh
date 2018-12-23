class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     def agenda_email
          @email = 'charlie.5991@gmail.com'
          mail(:to => @email, :subject => 'Agenda this month')
     end
end
