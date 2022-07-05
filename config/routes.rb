Rails.application.routes.draw do

 resources :users
 resources :daily_workouts, only: %i[new create]
  root 'home#home'
  
end
