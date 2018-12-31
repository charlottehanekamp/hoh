class Agenda < ActiveRecord::Base
     def monthly_update
         @users = User.all
         @users.each do |u|
              AgendaMailer.monthly_mail(u).deliver_now
         end
     end

end
