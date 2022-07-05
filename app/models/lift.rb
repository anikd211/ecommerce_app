class Lift < ApplicationRecord
    belongs_to :daily_workout
   
    validates :name, presence: true
    validates :sets, presence: true
    validates :reps, presence: true
  
end
