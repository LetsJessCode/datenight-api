class Datenight < ApplicationRecord
    has_many :reviews
    has_many :reviewers, through: :reviews

    after_create :send_email_to_subscribers

    private
        def send_email_to_subscribers
            Subscriber.all.each do |subscriber|
            SubscriptionMailer.send_email(subscriber.email,self)
        end
    end
end     
