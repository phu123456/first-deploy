require 'test_helper'

class BlowersControllerTest < ActionController::TestCase
  setup do
    @blower = blowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blower" do
    assert_difference('Blower.count') do
      post :create, blower: {  }
    end

    assert_redirected_to blower_path(assigns(:blower))
  end

  test "should show blower" do
    get :show, id: @blower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blower
    assert_response :success
  end

  test "should update blower" do
    patch :update, id: @blower, blower: {  }
    assert_redirected_to blower_path(assigns(:blower))
  end

  test "should destroy blower" do
    assert_difference('Blower.count', -1) do
      delete :destroy, id: @blower
    end

    assert_redirected_to blowers_path
  end
end
