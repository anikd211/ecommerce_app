class DailyWorkout < ApplicationRecord
  has_many :lifts
  accepts_nested_attributes_for :lifts # allows for adding many children dynamically
  
  validates :focus, presence: true  
end
