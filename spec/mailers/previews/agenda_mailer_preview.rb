# Preview all emails at http://localhost:3000/rails/mailers/agenda_mailer
class AgendaMailerPreview < ActionMailer::Preview
     def monthly_mail
          AgendaMailer.monthly_mail('charlie.5991@gmail.com')
     end
end
