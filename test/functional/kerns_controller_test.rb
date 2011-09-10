require 'test_helper'

class KernsControllerTest < ActionController::TestCase
  setup do
    @kern = kerns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kerns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kern" do
    assert_difference('Kern.count') do
      post :create, kern: @kern.attributes
    end

    assert_redirected_to kern_path(assigns(:kern))
  end

  test "should show kern" do
    get :show, id: @kern.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kern.to_param
    assert_response :success
  end

  test "should update kern" do
    put :update, id: @kern.to_param, kern: @kern.attributes
    assert_redirected_to kern_path(assigns(:kern))
  end

  test "should destroy kern" do
    assert_difference('Kern.count', -1) do
      delete :destroy, id: @kern.to_param
    end

    assert_redirected_to kerns_path
  end
end
