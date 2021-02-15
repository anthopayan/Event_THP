class Event < ApplicationRecord
    validates :start_date, presence :true, numericality: { only_integer: :greater_than_or_equal_to{Time.now}}
    validates :duration, presence :true, 
    validates :title, presence :true, length: { in: 5..140 }
    validates :description, presence :true, length: { in: 20..1000 }
    validates :price, presence :true, :inclusion => 1..1000
    validates :location, presence :true
    has_many :participations
    has_many :users, through: :participations
    belongs_to :user
end
