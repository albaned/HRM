require 'test_helper'

class PozisControllerTest < ActionController::TestCase
  setup do
    @pozi = pozis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pozis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pozi" do
    assert_difference('Pozi.count') do
      post :create, pozi: { description: @pozi.description }
    end

    assert_redirected_to pozi_path(assigns(:pozi))
  end

  test "should show pozi" do
    get :show, id: @pozi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pozi
    assert_response :success
  end

  test "should update pozi" do
    patch :update, id: @pozi, pozi: { description: @pozi.description }
    assert_redirected_to pozi_path(assigns(:pozi))
  end

  test "should destroy pozi" do
    assert_difference('Pozi.count', -1) do
      delete :destroy, id: @pozi
    end

    assert_redirected_to pozis_path
  end
end
