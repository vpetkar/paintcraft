require 'test_helper'

class DrawerControllerTest < ActionController::TestCase
  test "should get draw" do
    get :draw
    assert_response :success
  end

end
