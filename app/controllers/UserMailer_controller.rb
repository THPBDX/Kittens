class UserMailer < ApplicationMailer

    def mail_command (email, order)
        @current_order = order
        mail(to: email, subject: "Merci d'avoir acheté cette image")
    end


    def mail_command_admin (usermail, userorder)
        @admin_order = userorder
        @usermail = usermail
        @users = User.all
        @users.each do |user|
            if user.status == "admin"
                mail(to: user.email, subject: "On a fait une vente!")
            end
        end
    end
end