class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     #default to: 'charlie.5991@gmail.com'
     # # default to: -> { User.pluck(:email) },
     #      # from: 'info@hoh-archery.nl'
     #
     def monthly_mail(email)
          mail(:to => 'charlie.5991@gmail.com', :subject => 'Agenda this month')
     end
end
