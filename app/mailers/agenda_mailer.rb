class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     def agenda_email
          # @users = User.all
          # User.find_each do |user|
               # @email = @user.email
               @email = 'charlie.5991@gmail.com'
               mail(:to => @email,
                    :subject => 'Agenda this month')#add an date and maybe some more info
          # end
     end
end
