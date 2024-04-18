require "application_system_test_case"

class OneRepMaxesTest < ApplicationSystemTestCase
  setup do
    @one_rep_max = one_rep_maxes(:one)
  end

  test "visiting the index" do
    visit one_rep_maxes_url
    assert_selector "h1", text: "One rep maxes"
  end

  test "should create one rep max" do
    visit one_rep_maxes_url
    click_on "New one rep max"

    fill_in "Chestpressmax", with: @one_rep_max.ChestPressMax
    fill_in "Deadliftmax", with: @one_rep_max.DeadliftMax
    fill_in "Shoulderpressmax", with: @one_rep_max.ShoulderPressMax
    fill_in "Squatmax", with: @one_rep_max.SquatMax
    click_on "Create One rep max"

    assert_text "One rep max was successfully created"
    click_on "Back"
  end

  test "should update One rep max" do
    visit one_rep_max_url(@one_rep_max)
    click_on "Edit this one rep max", match: :first

    fill_in "Chestpressmax", with: @one_rep_max.ChestPressMax
    fill_in "Deadliftmax", with: @one_rep_max.DeadliftMax
    fill_in "Shoulderpressmax", with: @one_rep_max.ShoulderPressMax
    fill_in "Squatmax", with: @one_rep_max.SquatMax
    click_on "Update One rep max"

    assert_text "One rep max was successfully updated"
    click_on "Back"
  end

  test "should destroy One rep max" do
    visit one_rep_max_url(@one_rep_max)
    click_on "Destroy this one rep max", match: :first

    assert_text "One rep max was successfully destroyed"
  end
end
