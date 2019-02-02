require "application_system_test_case"

class CoffeShopsTest < ApplicationSystemTestCase
  setup do
    @coffe_shop = coffe_shops(:one)
  end

  test "visiting the index" do
    visit coffe_shops_url
    assert_selector "h1", text: "Coffe Shops"
  end

  test "creating a Coffe shop" do
    visit coffe_shops_url
    click_on "New Coffe Shop"

    fill_in "Description", with: @coffe_shop.description
    fill_in "Latitude", with: @coffe_shop.latitude
    fill_in "Longitude", with: @coffe_shop.longitude
    fill_in "Name", with: @coffe_shop.name
    click_on "Create Coffe shop"

    assert_text "Coffe shop was successfully created"
    click_on "Back"
  end

  test "updating a Coffe shop" do
    visit coffe_shops_url
    click_on "Edit", match: :first

    fill_in "Description", with: @coffe_shop.description
    fill_in "Latitude", with: @coffe_shop.latitude
    fill_in "Longitude", with: @coffe_shop.longitude
    fill_in "Name", with: @coffe_shop.name
    click_on "Update Coffe shop"

    assert_text "Coffe shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffe shop" do
    visit coffe_shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffe shop was successfully destroyed"
  end
end
