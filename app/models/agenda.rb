class Agenda < ActiveRecord::Base

     def self.weekly_update
         @user = User.all
         @user.each do |u|
           AgendaMailer.monthly_mail(u.email).deliver
         end
     end

end
