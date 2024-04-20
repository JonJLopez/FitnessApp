require "test_helper"

class WeightTrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weight_tracker = weight_trackers(:one)
  end

  test "should get index" do
    get weight_trackers_url
    assert_response :success
  end

  test "should get new" do
    get new_weight_tracker_url
    assert_response :success
  end

  test "should create weight_tracker" do
    assert_difference("WeightTracker.count") do
      post weight_trackers_url, params: { weight_tracker: { exercise: @weight_tracker.exercise, reps: @weight_tracker.reps, user_id: @weight_tracker.user_id, weight: @weight_tracker.weight } }
    end

    assert_redirected_to weight_tracker_url(WeightTracker.last)
  end

  test "should show weight_tracker" do
    get weight_tracker_url(@weight_tracker)
    assert_response :success
  end

  test "should get edit" do
    get edit_weight_tracker_url(@weight_tracker)
    assert_response :success
  end

  test "should update weight_tracker" do
    patch weight_tracker_url(@weight_tracker), params: { weight_tracker: { exercise: @weight_tracker.exercise, reps: @weight_tracker.reps, user_id: @weight_tracker.user_id, weight: @weight_tracker.weight } }
    assert_redirected_to weight_tracker_url(@weight_tracker)
  end

  test "should destroy weight_tracker" do
    assert_difference("WeightTracker.count", -1) do
      delete weight_tracker_url(@weight_tracker)
    end

    assert_redirected_to weight_trackers_url
  end
end
