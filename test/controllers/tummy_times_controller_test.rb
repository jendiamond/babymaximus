require 'test_helper'

class TummyTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tummy_time = tummy_times(:one)
  end

  test "should get index" do
    get tummy_times_url
    assert_response :success
  end

  test "should get new" do
    get new_tummy_time_url
    assert_response :success
  end

  test "should create tummy_time" do
    assert_difference('TummyTime.count') do
      post tummy_times_url, params: { tummy_time: { day_id: @tummy_time.day_id, notes: @tummy_time.notes, tummy_time: @tummy_time.tummy_time } }
    end

    assert_redirected_to tummy_time_url(TummyTime.last)
  end

  test "should show tummy_time" do
    get tummy_time_url(@tummy_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_tummy_time_url(@tummy_time)
    assert_response :success
  end

  test "should update tummy_time" do
    patch tummy_time_url(@tummy_time), params: { tummy_time: { day_id: @tummy_time.day_id, notes: @tummy_time.notes, tummy_time: @tummy_time.tummy_time } }
    assert_redirected_to tummy_time_url(@tummy_time)
  end

  test "should destroy tummy_time" do
    assert_difference('TummyTime.count', -1) do
      delete tummy_time_url(@tummy_time)
    end

    assert_redirected_to tummy_times_url
  end
end
