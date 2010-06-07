require 'test_helper'

class FaultsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fault" do
    assert_difference('Fault.count') do
      post :create, :fault => { }
    end

    assert_redirected_to fault_path(assigns(:fault))
  end

  test "should show fault" do
    get :show, :id => faults(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => faults(:one).to_param
    assert_response :success
  end

  test "should update fault" do
    put :update, :id => faults(:one).to_param, :fault => { }
    assert_redirected_to fault_path(assigns(:fault))
  end

  test "should destroy fault" do
    assert_difference('Fault.count', -1) do
      delete :destroy, :id => faults(:one).to_param
    end

    assert_redirected_to faults_path
  end
end
