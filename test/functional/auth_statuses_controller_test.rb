require 'test_helper'

class AuthStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auth_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth_status" do
    assert_difference('AuthStatus.count') do
      post :create, :auth_status => { }
    end

    assert_redirected_to auth_status_path(assigns(:auth_status))
  end

  test "should show auth_status" do
    get :show, :id => auth_statuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => auth_statuses(:one).to_param
    assert_response :success
  end

  test "should update auth_status" do
    put :update, :id => auth_statuses(:one).to_param, :auth_status => { }
    assert_redirected_to auth_status_path(assigns(:auth_status))
  end

  test "should destroy auth_status" do
    assert_difference('AuthStatus.count', -1) do
      delete :destroy, :id => auth_statuses(:one).to_param
    end

    assert_redirected_to auth_statuses_path
  end
end
