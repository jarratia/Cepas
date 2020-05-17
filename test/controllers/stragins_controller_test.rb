require 'test_helper'

class StraginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stragin = stragins(:one)
  end

  test "should get index" do
    get stragins_url
    assert_response :success
  end

  test "should get new" do
    get new_stragin_url
    assert_response :success
  end

  test "should create stragin" do
    assert_difference('Stragin.count') do
      post stragins_url, params: { stragin: { name: @stragin.name } }
    end

    assert_redirected_to stragin_url(Stragin.last)
  end

  test "should show stragin" do
    get stragin_url(@stragin)
    assert_response :success
  end

  test "should get edit" do
    get edit_stragin_url(@stragin)
    assert_response :success
  end

  test "should update stragin" do
    patch stragin_url(@stragin), params: { stragin: { name: @stragin.name } }
    assert_redirected_to stragin_url(@stragin)
  end

  test "should destroy stragin" do
    assert_difference('Stragin.count', -1) do
      delete stragin_url(@stragin)
    end

    assert_redirected_to stragins_url
  end
end
