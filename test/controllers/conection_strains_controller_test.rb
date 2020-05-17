require 'test_helper'

class ConectionStrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conection_strain = conection_strains(:one)
  end

  test "should get index" do
    get conection_strains_url
    assert_response :success
  end

  test "should get new" do
    get new_conection_strain_url
    assert_response :success
  end

  test "should create conection_strain" do
    assert_difference('ConectionStrain.count') do
      post conection_strains_url, params: { conection_strain: { strain_id: @conection_strain.strain_id, wine_id: @conection_strain.wine_id } }
    end

    assert_redirected_to conection_strain_url(ConectionStrain.last)
  end

  test "should show conection_strain" do
    get conection_strain_url(@conection_strain)
    assert_response :success
  end

  test "should get edit" do
    get edit_conection_strain_url(@conection_strain)
    assert_response :success
  end

  test "should update conection_strain" do
    patch conection_strain_url(@conection_strain), params: { conection_strain: { strain_id: @conection_strain.strain_id, wine_id: @conection_strain.wine_id } }
    assert_redirected_to conection_strain_url(@conection_strain)
  end

  test "should destroy conection_strain" do
    assert_difference('ConectionStrain.count', -1) do
      delete conection_strain_url(@conection_strain)
    end

    assert_redirected_to conection_strains_url
  end
end
