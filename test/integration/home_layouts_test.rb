require 'test_helper'

class HomeLayoutsTest < ActionDispatch::IntegrationTest

 def setup
  @daily_workout = DailyWorkout.last
 end
 
 test 'Proper Navbar Links' do
   get root_path
   assert_select 'a[href=?]', root_path
   assert_select 'a[href=?]', new_daily_workout_path
   assert_select 'nav' do
     assert_select 'a[href=?]', '#', 3
  end
end

test 'Daily Workout Renders on Home' do
 get root_path
 assert_template 'daily_workouts/_daily_workout'
end

test 'Latest Daily Workout renders on Home' do
 get root_path
 assert_equal(DailyWorkout.last, @daily_workout)
end


 

 
 
 
end
