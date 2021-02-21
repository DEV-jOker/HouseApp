require "application_system_test_case"

class CubboardsTest < ApplicationSystemTestCase
  setup do
    @cubboard = cubboards(:one)
  end

  test "visiting the index" do
    visit cubboards_url
    assert_selector "h1", text: "Cubboards"
  end

  test "creating a Cubboard" do
    visit cubboards_url
    click_on "New Cubboard"

    fill_in "Description", with: @cubboard.description
    fill_in "Name", with: @cubboard.name
    fill_in "Room", with: @cubboard.room_id
    click_on "Create Cubboard"

    assert_text "Cubboard was successfully created"
    click_on "Back"
  end

  test "updating a Cubboard" do
    visit cubboards_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cubboard.description
    fill_in "Name", with: @cubboard.name
    fill_in "Room", with: @cubboard.room_id
    click_on "Update Cubboard"

    assert_text "Cubboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Cubboard" do
    visit cubboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cubboard was successfully destroyed"
  end
end
