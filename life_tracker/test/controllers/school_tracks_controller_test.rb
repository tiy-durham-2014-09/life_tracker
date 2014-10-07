require 'test_helper'

class SchoolTracksControllerTest < ActionController::TestCase
  setup do
    @school_track = school_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_track" do
    assert_difference('SchoolTrack.count') do
      post :create, school_track: { school_name: @school_track.school_name, year_school_began: @school_track.year_school_began, year_school_ended: @school_track.year_school_ended }
    end

    assert_redirected_to school_track_path(assigns(:school_track))
  end

  test "should show school_track" do
    get :show, id: @school_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_track
    assert_response :success
  end

  test "should update school_track" do
    patch :update, id: @school_track, school_track: { school_name: @school_track.school_name, year_school_began: @school_track.year_school_began, year_school_ended: @school_track.year_school_ended }
    assert_redirected_to school_track_path(assigns(:school_track))
  end

  test "should destroy school_track" do
    assert_difference('SchoolTrack.count', -1) do
      delete :destroy, id: @school_track
    end

    assert_redirected_to school_tracks_path
  end
end
