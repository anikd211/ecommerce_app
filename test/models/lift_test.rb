require 'test_helper'

class LiftTest < ActiveSupport::TestCase
  setup do
    @daily_workout = daily_workouts(:one)
    @lift = Lift.new( name: "Deadlift", sets: 5, reps: 3, daily_workout_id: @daily_workout.id )
  end
  
  test 'Lift should be valid' do
    assert @lift.valid?
  end
  

  
    #meta programming
  lift_attributes = %i[name sets reps daily_workout_id] # list of symbols
  
  lift_attributes.each do |attribute|
  test "lift #{attribute} is present" do
    eval("@lift.#{attribute} = nil")
    assert_not @lift.valid?
    end
  end


end
