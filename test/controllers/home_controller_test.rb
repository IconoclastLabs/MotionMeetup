require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  def test_index
    get :index
    assert_response :success
  end
  
  def test_signup
    get :signup, message: {name:"test", email: "example@example.com", captcha: "63"}
    assert_response :success

  end
end
