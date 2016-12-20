require 'test_helper'

class AplikoControllerTest < ActionController::TestCase
  test "should get pune" do
    get :pune
    assert_response :success
  end

end
