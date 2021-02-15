class Participation < ApplicationRecord
    has_many :users
    belongs_to :event

    after_create :new_participation

    def new_participation
        UserMailer.user_participation(self).deliver_now
    end
end
