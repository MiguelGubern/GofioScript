require 'test_helper'

class CoffeShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffe_shop = coffe_shops(:one)
  end

  test "should get index" do
    get coffe_shops_url
    assert_response :success
  end

  test "should get new" do
    get new_coffe_shop_url
    assert_response :success
  end

  test "should create coffe_shop" do
    assert_difference('CoffeShop.count') do
      post coffe_shops_url, params: { coffe_shop: { description: @coffe_shop.description, latitude: @coffe_shop.latitude, longitude: @coffe_shop.longitude, name: @coffe_shop.name } }
    end

    assert_redirected_to coffe_shop_url(CoffeShop.last)
  end

  test "should show coffe_shop" do
    get coffe_shop_url(@coffe_shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffe_shop_url(@coffe_shop)
    assert_response :success
  end

  test "should update coffe_shop" do
    patch coffe_shop_url(@coffe_shop), params: { coffe_shop: { description: @coffe_shop.description, latitude: @coffe_shop.latitude, longitude: @coffe_shop.longitude, name: @coffe_shop.name } }
    assert_redirected_to coffe_shop_url(@coffe_shop)
  end

  test "should destroy coffe_shop" do
    assert_difference('CoffeShop.count', -1) do
      delete coffe_shop_url(@coffe_shop)
    end

    assert_redirected_to coffe_shops_url
  end
end
