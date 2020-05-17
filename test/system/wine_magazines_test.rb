require "application_system_test_case"

class WineMagazinesTest < ApplicationSystemTestCase
  setup do
    @wine_magazine = wine_magazines(:one)
  end

  test "visiting the index" do
    visit wine_magazines_url
    assert_selector "h1", text: "Wine Magazines"
  end

  test "creating a Wine magazine" do
    visit wine_magazines_url
    click_on "New Wine Magazine"

    fill_in "Name", with: @wine_magazine.name
    click_on "Create Wine magazine"

    assert_text "Wine magazine was successfully created"
    click_on "Back"
  end

  test "updating a Wine magazine" do
    visit wine_magazines_url
    click_on "Edit", match: :first

    fill_in "Name", with: @wine_magazine.name
    click_on "Update Wine magazine"

    assert_text "Wine magazine was successfully updated"
    click_on "Back"
  end

  test "destroying a Wine magazine" do
    visit wine_magazines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wine magazine was successfully destroyed"
  end
end
