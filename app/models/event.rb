class Event < ApplicationRecord
    validates :start_date, presence: true, 
        validate :start_of_event

    validates :duration, presence: true, 
        numericality: { only_integer: true, greater_than: 0 },
        validate :multiple_of_5
    
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence :true, length: { in: 20..1000 }

    validates :price, presence: true, 
        numericality: {only_integer: true, greater_than_or_equal_to: 1, 
        less_than_or_equal_to: 1000}

    validates :location, presence: true

    has_many :participations
    has_many :users, through: :participations
    belongs_to :user


    

    def multiple_of_5
        if duration != nil && (duration % 5) != 0
            errors.add(:duration, "ERROR duration is not %5 !")
        end
    end

    def start_of_event
        if start_date != nil && Time.now < start_date
            errors.add(:start_date, "ERROR date is impossible")
        end
    end

end