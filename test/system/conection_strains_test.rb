require "application_system_test_case"

class ConectionStrainsTest < ApplicationSystemTestCase
  setup do
    @conection_strain = conection_strains(:one)
  end

  test "visiting the index" do
    visit conection_strains_url
    assert_selector "h1", text: "Conection Strains"
  end

  test "creating a Conection strain" do
    visit conection_strains_url
    click_on "New Conection Strain"

    fill_in "Strain", with: @conection_strain.strain_id
    fill_in "Wine", with: @conection_strain.wine_id
    click_on "Create Conection strain"

    assert_text "Conection strain was successfully created"
    click_on "Back"
  end

  test "updating a Conection strain" do
    visit conection_strains_url
    click_on "Edit", match: :first

    fill_in "Strain", with: @conection_strain.strain_id
    fill_in "Wine", with: @conection_strain.wine_id
    click_on "Update Conection strain"

    assert_text "Conection strain was successfully updated"
    click_on "Back"
  end

  test "destroying a Conection strain" do
    visit conection_strains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conection strain was successfully destroyed"
  end
end
