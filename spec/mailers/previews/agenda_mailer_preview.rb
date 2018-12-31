# Preview all emails at http://localhost:3000/rails/mailers/agenda_mailer
class AgendaMailerPreview < ActionMailer::Preview
     def monthly_mail
          AgendaMailer.monthly_mail(User.first)
     end
end
