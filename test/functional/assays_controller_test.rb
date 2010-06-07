require 'test_helper'

class AssaysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assay" do
    assert_difference('Assay.count') do
      post :create, :assay => { }
    end

    assert_redirected_to assay_path(assigns(:assay))
  end

  test "should show assay" do
    get :show, :id => assays(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => assays(:one).to_param
    assert_response :success
  end

  test "should update assay" do
    put :update, :id => assays(:one).to_param, :assay => { }
    assert_redirected_to assay_path(assigns(:assay))
  end

  test "should destroy assay" do
    assert_difference('Assay.count', -1) do
      delete :destroy, :id => assays(:one).to_param
    end

    assert_redirected_to assays_path
  end
end
