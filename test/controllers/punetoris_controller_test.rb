require 'test_helper'

class PunetorisControllerTest < ActionController::TestCase
  setup do
    @punetori = punetoris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punetoris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punetori" do
    assert_difference('Punetori.count') do
      post :create, punetori: { email: @punetori.email, emri: @punetori.emri, mbiemri: @punetori.mbiemri }
    end

    assert_redirected_to punetori_path(assigns(:punetori))
  end

  test "should show punetori" do
    get :show, id: @punetori
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punetori
    assert_response :success
  end

  test "should update punetori" do
    patch :update, id: @punetori, punetori: { email: @punetori.email, emri: @punetori.emri, mbiemri: @punetori.mbiemri }
    assert_redirected_to punetori_path(assigns(:punetori))
  end

  test "should destroy punetori" do
    assert_difference('Punetori.count', -1) do
      delete :destroy, id: @punetori
    end

    assert_redirected_to punetoris_path
  end
end
