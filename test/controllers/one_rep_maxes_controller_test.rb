require "test_helper"

class OneRepMaxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_rep_max = one_rep_maxes(:one)
  end

  test "should get index" do
    get one_rep_maxes_url
    assert_response :success
  end

  test "should get new" do
    get new_one_rep_max_url
    assert_response :success
  end

  test "should create one_rep_max" do
    assert_difference("OneRepMax.count") do
      post one_rep_maxes_url, params: { one_rep_max: { ChestPressMax: @one_rep_max.ChestPressMax, DeadliftMax: @one_rep_max.DeadliftMax, ShoulderPressMax: @one_rep_max.ShoulderPressMax, SquatMax: @one_rep_max.SquatMax } }
    end

    assert_redirected_to one_rep_max_url(OneRepMax.last)
  end

  test "should show one_rep_max" do
    get one_rep_max_url(@one_rep_max)
    assert_response :success
  end

  test "should get edit" do
    get edit_one_rep_max_url(@one_rep_max)
    assert_response :success
  end

  test "should update one_rep_max" do
    patch one_rep_max_url(@one_rep_max), params: { one_rep_max: { ChestPressMax: @one_rep_max.ChestPressMax, DeadliftMax: @one_rep_max.DeadliftMax, ShoulderPressMax: @one_rep_max.ShoulderPressMax, SquatMax: @one_rep_max.SquatMax } }
    assert_redirected_to one_rep_max_url(@one_rep_max)
  end

  test "should destroy one_rep_max" do
    assert_difference("OneRepMax.count", -1) do
      delete one_rep_max_url(@one_rep_max)
    end

    assert_redirected_to one_rep_maxes_url
  end
end
