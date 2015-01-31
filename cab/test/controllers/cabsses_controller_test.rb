require 'test_helper'

class CabssesControllerTest < ActionController::TestCase
  setup do
    @cabss = cabsses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cabsses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cabss" do
    assert_difference('Cabss.count') do
      post :create, cabss: { cab_no: @cabss.cab_no, cab_type: @cabss.cab_type, insure: @cabss.insure, rate: @cabss.rate }
    end

    assert_redirected_to cabss_path(assigns(:cabss))
  end

  test "should show cabss" do
    get :show, id: @cabss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cabss
    assert_response :success
  end

  test "should update cabss" do
    patch :update, id: @cabss, cabss: { cab_no: @cabss.cab_no, cab_type: @cabss.cab_type, insure: @cabss.insure, rate: @cabss.rate }
    assert_redirected_to cabss_path(assigns(:cabss))
  end

  test "should destroy cabss" do
    assert_difference('Cabss.count', -1) do
      delete :destroy, id: @cabss
    end

    assert_redirected_to cabsses_path
  end
end
