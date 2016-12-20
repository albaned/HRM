require 'test_helper'

class QytetetsControllerTest < ActionController::TestCase
  setup do
    @qytetet = qytetets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qytetets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qytetet" do
    assert_difference('Qytetet.count') do
      post :create, qytetet: { description: @qytetet.description }
    end

    assert_redirected_to qytetet_path(assigns(:qytetet))
  end

  test "should show qytetet" do
    get :show, id: @qytetet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qytetet
    assert_response :success
  end

  test "should update qytetet" do
    patch :update, id: @qytetet, qytetet: { description: @qytetet.description }
    assert_redirected_to qytetet_path(assigns(:qytetet))
  end

  test "should destroy qytetet" do
    assert_difference('Qytetet.count', -1) do
      delete :destroy, id: @qytetet
    end

    assert_redirected_to qytetets_path
  end
end
