require "application_system_test_case"

class StraginsTest < ApplicationSystemTestCase
  setup do
    @stragin = stragins(:one)
  end

  test "visiting the index" do
    visit stragins_url
    assert_selector "h1", text: "Stragins"
  end

  test "creating a Stragin" do
    visit stragins_url
    click_on "New Stragin"

    fill_in "Name", with: @stragin.name
    click_on "Create Stragin"

    assert_text "Stragin was successfully created"
    click_on "Back"
  end

  test "updating a Stragin" do
    visit stragins_url
    click_on "Edit", match: :first

    fill_in "Name", with: @stragin.name
    click_on "Update Stragin"

    assert_text "Stragin was successfully updated"
    click_on "Back"
  end

  test "destroying a Stragin" do
    visit stragins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stragin was successfully destroyed"
  end
end
