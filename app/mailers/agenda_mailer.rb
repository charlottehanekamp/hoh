class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     #default to: 'charlie.5991@gmail.com'
     # # default to: -> { User.pluck(:email) },
     #      # from: 'info@hoh-archery.nl'
     #
     def monthly_mail(u)
          datetime = DateTime.now
          @agenda_items = Agenda.order('start_at asc').where("start_at >= ?", datetime.to_formatted_s(:iso8601)).limit(5)
          @nieuws_items = Blog.order('created_at desc').where("date <= ?", datetime.to_formatted_s(:iso8601)).limit(5)
          @user = u
          mail(:to => u.email, :subject => 'Agenda this month')
     end

     def monthly_mail_test(email)
          mail(:to => 'charlie.5991@gmail.com', :subject => 'Agenda this month')
     end
end
