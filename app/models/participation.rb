class Participation < ApplicationRecord

    after_create :participation_send

    def welcome_send
        ParticipationMailer.participation_email(self).deliver_now
    end

    belongs_to :user
    belongs_to :event   


end
