require 'test_helper'

class LifeEventsControllerTest < ActionController::TestCase
  setup do
    @life_event = life_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:life_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create life_event" do
    assert_difference('LifeEvent.count') do
      post :create, life_event: { event_description: @life_event.event_description, event_title: @life_event.event_title, event_year: @life_event.event_year }
    end

    assert_redirected_to life_event_path(assigns(:life_event))
  end

  test "should show life_event" do
    get :show, id: @life_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @life_event
    assert_response :success
  end

  test "should update life_event" do
    patch :update, id: @life_event, life_event: { event_description: @life_event.event_description, event_title: @life_event.event_title, event_year: @life_event.event_year }
    assert_redirected_to life_event_path(assigns(:life_event))
  end

  test "should destroy life_event" do
    assert_difference('LifeEvent.count', -1) do
      delete :destroy, id: @life_event
    end

    assert_redirected_to life_events_path
  end
end
