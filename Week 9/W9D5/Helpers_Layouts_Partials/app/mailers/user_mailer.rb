class UserMailer < ApplicationMailer
    default from: 'everybody@appacademy.io'
    layout 'mailer'

    def welcome_email(user)
        @user = user
        
        mail(to: user.username, subject: 'Testing')
    end

end
