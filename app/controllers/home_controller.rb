class HomeController < ApplicationController
  def home
    # Test the creation of dailyworkouts, test the rendering of dailyworkouts, test to make sure if no workouts page renders
    @daily_workout = DailyWorkout.last
  end
end
