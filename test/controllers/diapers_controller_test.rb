require 'test_helper'

class DiapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diaper = diapers(:one)
  end

  test "should get index" do
    get diapers_url
    assert_response :success
  end

  test "should get new" do
    get new_diaper_url
    assert_response :success
  end

  test "should create diaper" do
    assert_difference('Diaper.count') do
      post diapers_url, params: { diaper: { day_id: @diaper.day_id, diaper_type: @diaper.diaper_type, notes: @diaper.notes } }
    end

    assert_redirected_to diaper_url(Diaper.last)
  end

  test "should show diaper" do
    get diaper_url(@diaper)
    assert_response :success
  end

  test "should get edit" do
    get edit_diaper_url(@diaper)
    assert_response :success
  end

  test "should update diaper" do
    patch diaper_url(@diaper), params: { diaper: { day_id: @diaper.day_id, diaper_type: @diaper.diaper_type, notes: @diaper.notes } }
    assert_redirected_to diaper_url(@diaper)
  end

  test "should destroy diaper" do
    assert_difference('Diaper.count', -1) do
      delete diaper_url(@diaper)
    end

    assert_redirected_to diapers_url
  end
end
