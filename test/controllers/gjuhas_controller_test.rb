require 'test_helper'

class GjuhasControllerTest < ActionController::TestCase
  setup do
    @gjuha = gjuhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gjuhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gjuha" do
    assert_difference('Gjuha.count') do
      post :create, gjuha: { description: @gjuha.description }
    end

    assert_redirected_to gjuha_path(assigns(:gjuha))
  end

  test "should show gjuha" do
    get :show, id: @gjuha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gjuha
    assert_response :success
  end

  test "should update gjuha" do
    patch :update, id: @gjuha, gjuha: { description: @gjuha.description }
    assert_redirected_to gjuha_path(assigns(:gjuha))
  end

  test "should destroy gjuha" do
    assert_difference('Gjuha.count', -1) do
      delete :destroy, id: @gjuha
    end

    assert_redirected_to gjuhas_path
  end
end
