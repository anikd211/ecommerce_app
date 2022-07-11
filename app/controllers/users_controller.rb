class UsersController < ApplicationController
  def new  # new action brings up new user page
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create # form_with post request goes here
     @user = User.new(user_params) # form_with helper passes a params hashmap
      if @user.save # Handle a successful save to DB
        render 'show'
      else
        render 'new'
      end
  end
    
    private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmtion)
    end
    
    
    
end
