require "application_system_test_case"

class WeightTrackersTest < ApplicationSystemTestCase
  setup do
    @weight_tracker = weight_trackers(:one)
  end

  test "visiting the index" do
    visit weight_trackers_url
    assert_selector "h1", text: "Weight trackers"
  end

  test "should create weight tracker" do
    visit weight_trackers_url
    click_on "New weight tracker"

    fill_in "Exercise", with: @weight_tracker.exercise
    fill_in "Reps", with: @weight_tracker.reps
    fill_in "Weight", with: @weight_tracker.weight
    click_on "Create Weight tracker"

    assert_text "Weight tracker was successfully created"
    click_on "Back"
  end

  test "should update Weight tracker" do
    visit weight_tracker_url(@weight_tracker)
    click_on "Edit this weight tracker", match: :first

    fill_in "Exercise", with: @weight_tracker.exercise
    fill_in "Reps", with: @weight_tracker.reps
    fill_in "Weight", with: @weight_tracker.weight
    click_on "Update Weight tracker"

    assert_text "Weight tracker was successfully updated"
    click_on "Back"
  end

  test "should destroy Weight tracker" do
    visit weight_tracker_url(@weight_tracker)
    click_on "Destroy this weight tracker", match: :first

    assert_text "Weight tracker was successfully destroyed"
  end
end
