require 'test_helper'

class CubboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cubboard = cubboards(:one)
  end

  test "should get index" do
    get cubboards_url
    assert_response :success
  end

  test "should get new" do
    get new_cubboard_url
    assert_response :success
  end

  test "should create cubboard" do
    assert_difference('Cubboard.count') do
      post cubboards_url, params: { cubboard: { description: @cubboard.description, name: @cubboard.name, room_id: @cubboard.room_id } }
    end

    assert_redirected_to cubboard_url(Cubboard.last)
  end

  test "should show cubboard" do
    get cubboard_url(@cubboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_cubboard_url(@cubboard)
    assert_response :success
  end

  test "should update cubboard" do
    patch cubboard_url(@cubboard), params: { cubboard: { description: @cubboard.description, name: @cubboard.name, room_id: @cubboard.room_id } }
    assert_redirected_to cubboard_url(@cubboard)
  end

  test "should destroy cubboard" do
    assert_difference('Cubboard.count', -1) do
      delete cubboard_url(@cubboard)
    end

    assert_redirected_to cubboards_url
  end
end
