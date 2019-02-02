require "application_system_test_case"

class AttractivesTest < ApplicationSystemTestCase
  setup do
    @attractive = attractives(:one)
  end

  test "visiting the index" do
    visit attractives_url
    assert_selector "h1", text: "Attractives"
  end

  test "creating a Attractive" do
    visit attractives_url
    click_on "New Attractive"

    fill_in "Address", with: @attractive.address
    fill_in "Description", with: @attractive.description
    fill_in "Latitude", with: @attractive.latitude
    fill_in "Longitude", with: @attractive.longitude
    fill_in "Name", with: @attractive.name
    fill_in "Schedule", with: @attractive.schedule
    fill_in "Telephone", with: @attractive.telephone
    fill_in "Type", with: @attractive.type_id
    fill_in "Web", with: @attractive.web
    click_on "Create Attractive"

    assert_text "Attractive was successfully created"
    click_on "Back"
  end

  test "updating a Attractive" do
    visit attractives_url
    click_on "Edit", match: :first

    fill_in "Address", with: @attractive.address
    fill_in "Description", with: @attractive.description
    fill_in "Latitude", with: @attractive.latitude
    fill_in "Longitude", with: @attractive.longitude
    fill_in "Name", with: @attractive.name
    fill_in "Schedule", with: @attractive.schedule
    fill_in "Telephone", with: @attractive.telephone
    fill_in "Type", with: @attractive.type_id
    fill_in "Web", with: @attractive.web
    click_on "Update Attractive"

    assert_text "Attractive was successfully updated"
    click_on "Back"
  end

  test "destroying a Attractive" do
    visit attractives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attractive was successfully destroyed"
  end
end
