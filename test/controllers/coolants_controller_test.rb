require 'test_helper'

class CoolantsControllerTest < ActionController::TestCase
  setup do
    @coolant = coolants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coolants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coolant" do
    assert_difference('Coolant.count') do
      post :create, coolant: {  }
    end

    assert_redirected_to coolant_path(assigns(:coolant))
  end

  test "should show coolant" do
    get :show, id: @coolant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coolant
    assert_response :success
  end

  test "should update coolant" do
    patch :update, id: @coolant, coolant: {  }
    assert_redirected_to coolant_path(assigns(:coolant))
  end

  test "should destroy coolant" do
    assert_difference('Coolant.count', -1) do
      delete :destroy, id: @coolant
    end

    assert_redirected_to coolants_path
  end
end
