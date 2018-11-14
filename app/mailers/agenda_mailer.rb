class AgendaMailer < ApplicationMailer
     default from: 'info@hoh-archery.nl'
     def agenda_email
<<<<<<< HEAD
          # @users = User.all
          # User.find_each do |user|
               # @email = @user.email
               @email = 'charlie.5991@gmail.com'
               mail(:to => @email,
                    :subject => 'Agenda this month')#add an date and maybe some more info
          # end
=======
          @user = params[:user]
          mail(to: @user.email, subject: 'Agenda')
>>>>>>> 40fedb10cf6b27c48f3c338c9290c0165c764e2b
     end
end
