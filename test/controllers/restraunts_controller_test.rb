require 'test_helper'

class RestrauntsControllerTest < ActionController::TestCase
  setup do
    @restraunt = restraunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restraunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restraunt" do
    assert_difference('Restraunt.count') do
      post :create, restraunt: { address: @restraunt.address, name: @restraunt.name, phone: @restraunt.phone, website: @restraunt.website }
    end

    assert_redirected_to restraunt_path(assigns(:restraunt))
  end

  test "should show restraunt" do
    get :show, id: @restraunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restraunt
    assert_response :success
  end

  test "should update restraunt" do
    patch :update, id: @restraunt, restraunt: { address: @restraunt.address, name: @restraunt.name, phone: @restraunt.phone, website: @restraunt.website }
    assert_redirected_to restraunt_path(assigns(:restraunt))
  end

  test "should destroy restraunt" do
    assert_difference('Restraunt.count', -1) do
      delete :destroy, id: @restraunt
    end

    assert_redirected_to restraunts_path
  end
end
