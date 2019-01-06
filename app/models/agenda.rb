class Agenda < ActiveRecord::Base
     belongs_to :location, :class_name => 'Location', :foreign_key => 'location_id'
       # belongs_to :location
     # enum location: { "Manege Ripse Ruiters": 1, "Manege Geuzeneiland": 0 }
     def monthly_update
         @users = User.all
         @users.each do |u|
              AgendaMailer.monthly_mail(u).deliver_now
         end
     end

end
