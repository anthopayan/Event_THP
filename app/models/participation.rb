class Participation < ApplicationRecord
   belongs_to :user
    belongs_to :event
    

    after_create :new_participation

    def new_participation
        ParticipationMailer.user_participation(self).deliver_now
    end
end
