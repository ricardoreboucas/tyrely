require 'test_helper'

class TiresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tire" do
    assert_difference('Tire.count') do
      post :create, :tire => { }
    end

    assert_redirected_to tire_path(assigns(:tire))
  end

  test "should show tire" do
    get :show, :id => tires(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tires(:one).to_param
    assert_response :success
  end

  test "should update tire" do
    put :update, :id => tires(:one).to_param, :tire => { }
    assert_redirected_to tire_path(assigns(:tire))
  end

  test "should destroy tire" do
    assert_difference('Tire.count', -1) do
      delete :destroy, :id => tires(:one).to_param
    end

    assert_redirected_to tires_path
  end
end
