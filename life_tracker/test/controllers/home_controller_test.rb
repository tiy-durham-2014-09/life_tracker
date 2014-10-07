require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get life_event" do
    get :life_event
    assert_response :success
  end

  test "should get school_track" do
    get :school_track
    assert_response :success
  end

end
