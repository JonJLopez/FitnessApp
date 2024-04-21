require "test_helper"

class CardioTrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardio_tracker = cardio_trackers(:one)
  end

  test "should get index" do
    get cardio_trackers_url
    assert_response :success
  end

  test "should get new" do
    get new_cardio_tracker_url
    assert_response :success
  end

  test "should create cardio_tracker" do
    assert_difference("CardioTracker.count") do
      post cardio_trackers_url, params: { cardio_tracker: { miles: @cardio_tracker.miles, minutes: @cardio_tracker.minutes, seconds: @cardio_tracker.seconds, user_id: @cardio_tracker.user_id } }
    end

    assert_redirected_to cardio_tracker_url(CardioTracker.last)
  end

  test "should show cardio_tracker" do
    get cardio_tracker_url(@cardio_tracker)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardio_tracker_url(@cardio_tracker)
    assert_response :success
  end

  test "should update cardio_tracker" do
    patch cardio_tracker_url(@cardio_tracker), params: { cardio_tracker: { miles: @cardio_tracker.miles, minutes: @cardio_tracker.minutes, seconds: @cardio_tracker.seconds, user_id: @cardio_tracker.user_id } }
    assert_redirected_to cardio_tracker_url(@cardio_tracker)
  end

  test "should destroy cardio_tracker" do
    assert_difference("CardioTracker.count", -1) do
      delete cardio_tracker_url(@cardio_tracker)
    end

    assert_redirected_to cardio_trackers_url
  end
end
