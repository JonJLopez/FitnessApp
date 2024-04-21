require "application_system_test_case"

class CardioTrackersTest < ApplicationSystemTestCase
  setup do
    @cardio_tracker = cardio_trackers(:one)
  end

  test "visiting the index" do
    visit cardio_trackers_url
    assert_selector "h1", text: "Cardio trackers"
  end

  test "should create cardio tracker" do
    visit cardio_trackers_url
    click_on "New cardio tracker"

    fill_in "Miles", with: @cardio_tracker.miles
    fill_in "Minutes", with: @cardio_tracker.minutes
    fill_in "Seconds", with: @cardio_tracker.seconds
    fill_in "User", with: @cardio_tracker.user_id
    click_on "Create Cardio tracker"

    assert_text "Cardio tracker was successfully created"
    click_on "Back"
  end

  test "should update Cardio tracker" do
    visit cardio_tracker_url(@cardio_tracker)
    click_on "Edit this cardio tracker", match: :first

    fill_in "Miles", with: @cardio_tracker.miles
    fill_in "Minutes", with: @cardio_tracker.minutes
    fill_in "Seconds", with: @cardio_tracker.seconds
    fill_in "User", with: @cardio_tracker.user_id
    click_on "Update Cardio tracker"

    assert_text "Cardio tracker was successfully updated"
    click_on "Back"
  end

  test "should destroy Cardio tracker" do
    visit cardio_tracker_url(@cardio_tracker)
    click_on "Destroy this cardio tracker", match: :first

    assert_text "Cardio tracker was successfully destroyed"
  end
end
