require 'test_helper'

class AttractivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attractive = attractives(:one)
  end

  test "should get index" do
    get attractives_url
    assert_response :success
  end

  test "should get new" do
    get new_attractive_url
    assert_response :success
  end

  test "should create attractive" do
    assert_difference('Attractive.count') do
      post attractives_url, params: { attractive: { address: @attractive.address, description: @attractive.description, latitude: @attractive.latitude, longitude: @attractive.longitude, name: @attractive.name, schedule: @attractive.schedule, telephone: @attractive.telephone, type_id: @attractive.type_id, web: @attractive.web } }
    end

    assert_redirected_to attractive_url(Attractive.last)
  end

  test "should show attractive" do
    get attractive_url(@attractive)
    assert_response :success
  end

  test "should get edit" do
    get edit_attractive_url(@attractive)
    assert_response :success
  end

  test "should update attractive" do
    patch attractive_url(@attractive), params: { attractive: { address: @attractive.address, description: @attractive.description, latitude: @attractive.latitude, longitude: @attractive.longitude, name: @attractive.name, schedule: @attractive.schedule, telephone: @attractive.telephone, type_id: @attractive.type_id, web: @attractive.web } }
    assert_redirected_to attractive_url(@attractive)
  end

  test "should destroy attractive" do
    assert_difference('Attractive.count', -1) do
      delete attractive_url(@attractive)
    end

    assert_redirected_to attractives_url
  end
end
