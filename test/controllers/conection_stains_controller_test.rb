require 'test_helper'

class ConectionStainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conection_stain = conection_stains(:one)
  end

  test "should get index" do
    get conection_stains_url
    assert_response :success
  end

  test "should get new" do
    get new_conection_stain_url
    assert_response :success
  end

  test "should create conection_stain" do
    assert_difference('ConectionStain.count') do
      post conection_stains_url, params: { conection_stain: { references: @conection_stain.references } }
    end

    assert_redirected_to conection_stain_url(ConectionStain.last)
  end

  test "should show conection_stain" do
    get conection_stain_url(@conection_stain)
    assert_response :success
  end

  test "should get edit" do
    get edit_conection_stain_url(@conection_stain)
    assert_response :success
  end

  test "should update conection_stain" do
    patch conection_stain_url(@conection_stain), params: { conection_stain: { references: @conection_stain.references } }
    assert_redirected_to conection_stain_url(@conection_stain)
  end

  test "should destroy conection_stain" do
    assert_difference('ConectionStain.count', -1) do
      delete conection_stain_url(@conection_stain)
    end

    assert_redirected_to conection_stains_url
  end
end
