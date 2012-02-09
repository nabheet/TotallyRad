require 'test_helper'

class AuthstatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authstatus" do
    assert_difference('Authstatus.count') do
      post :create, :authstatus => { }
    end

    assert_redirected_to authstatus_path(assigns(:authstatus))
  end

  test "should show authstatus" do
    get :show, :id => authstatuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => authstatuses(:one).to_param
    assert_response :success
  end

  test "should update authstatus" do
    put :update, :id => authstatuses(:one).to_param, :authstatus => { }
    assert_redirected_to authstatus_path(assigns(:authstatus))
  end

  test "should destroy authstatus" do
    assert_difference('Authstatus.count', -1) do
      delete :destroy, :id => authstatuses(:one).to_param
    end

    assert_redirected_to authstatuses_path
  end
end
