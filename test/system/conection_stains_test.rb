require "application_system_test_case"

class ConectionStainsTest < ApplicationSystemTestCase
  setup do
    @conection_stain = conection_stains(:one)
  end

  test "visiting the index" do
    visit conection_stains_url
    assert_selector "h1", text: "Conection Stains"
  end

  test "creating a Conection stain" do
    visit conection_stains_url
    click_on "New Conection Stain"

    fill_in "References", with: @conection_stain.references
    click_on "Create Conection stain"

    assert_text "Conection stain was successfully created"
    click_on "Back"
  end

  test "updating a Conection stain" do
    visit conection_stains_url
    click_on "Edit", match: :first

    fill_in "References", with: @conection_stain.references
    click_on "Update Conection stain"

    assert_text "Conection stain was successfully updated"
    click_on "Back"
  end

  test "destroying a Conection stain" do
    visit conection_stains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conection stain was successfully destroyed"
  end
end
