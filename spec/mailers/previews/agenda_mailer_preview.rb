# Preview all emails at http://localhost:3000/rails/mailers/agenda_mailer
class AgendaMailerPreview < ActionMailer::Preview
     def agenda_email
          AgendaMailer.agenda_email
     end
end
