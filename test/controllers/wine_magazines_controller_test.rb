require 'test_helper'

class WineMagazinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine_magazine = wine_magazines(:one)
  end

  test "should get index" do
    get wine_magazines_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_magazine_url
    assert_response :success
  end

  test "should create wine_magazine" do
    assert_difference('WineMagazine.count') do
      post wine_magazines_url, params: { wine_magazine: { name: @wine_magazine.name } }
    end

    assert_redirected_to wine_magazine_url(WineMagazine.last)
  end

  test "should show wine_magazine" do
    get wine_magazine_url(@wine_magazine)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_magazine_url(@wine_magazine)
    assert_response :success
  end

  test "should update wine_magazine" do
    patch wine_magazine_url(@wine_magazine), params: { wine_magazine: { name: @wine_magazine.name } }
    assert_redirected_to wine_magazine_url(@wine_magazine)
  end

  test "should destroy wine_magazine" do
    assert_difference('WineMagazine.count', -1) do
      delete wine_magazine_url(@wine_magazine)
    end

    assert_redirected_to wine_magazines_url
  end
end
