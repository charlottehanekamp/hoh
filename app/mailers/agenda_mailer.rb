class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     default to: 'charlie.5991@gmail.com'
     # # default to: -> { User.pluck(:email) },
     #      # from: 'info@hoh-archery.nl'
     #
     def monthly_mail()
          mail(:subject => 'Agenda this month')
     end

     def monthly_mail_test(email)
          mail(:to => 'charlie.5991@gmail.com', :subject => 'Agenda this month')
     end
end
