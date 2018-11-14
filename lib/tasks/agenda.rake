
desc 'Rake task email agenda'
task email_agenda: :environment do
     # items = Agenda.where(:start_at =< Date.today).order('start_at desc').limit(5), with: AgendaEntity
     users = Users.all
     users.each do |user|
          AgendaMailer.with(user: user).agenda_email.deliver_now
     end

end
