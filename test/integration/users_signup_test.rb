require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

test 'invalid signup information' do
  get new_user_path  # users signup path
  
  assert_no_difference 'User.count' do
 post users_path, params: { user: { name: "",
                            email: "user@invalid",
                            password: "foo",
                            password_confirmation: "bar" } }
end
    assert_template 'users/new'
    assert_template'shared/_error_messages'
    assert_select 'div.bg-red-100', 1
end



    
    
    
  

end
