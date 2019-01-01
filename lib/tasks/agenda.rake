
desc 'Rake task email agenda'
task monthly_mail: :environment do
     if Time.now.day == 1
          a = Agenda.new
          a.monthly_update()
     end
end
