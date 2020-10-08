class SubscriptionMailer < ApplicationMailer
    def send_email(email, datenight)
        @datenight = datenight
        mail(to: email, subject: @datenight.title)
    end
end
