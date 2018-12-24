
desc 'Rake task email agenda'
task email_agenda: :environment do
     # items = Agenda.where(:start_at =< Date.today).order('start_at desc').limit(5), with: AgendaEntity
     Agenda.monthly_update
end
