require 'test_helper'

class RefuzuarsControllerTest < ActionController::TestCase
  setup do
    @refuzuar = refuzuars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refuzuars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refuzuar" do
    assert_difference('Refuzuar.count') do
      post :create, refuzuar: { ditelindja: @refuzuar.ditelindja, email: @refuzuar.email, emri: @refuzuar.emri, mbiemri: @refuzuar.mbiemri, pozi_id: @refuzuar.pozi_id, status_id: @refuzuar.status_id, tel: @refuzuar.tel, vendlindja: @refuzuar.vendlindja }
    end

    assert_redirected_to refuzuar_path(assigns(:refuzuar))
  end

  test "should show refuzuar" do
    get :show, id: @refuzuar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refuzuar
    assert_response :success
  end

  test "should update refuzuar" do
    patch :update, id: @refuzuar, refuzuar: { ditelindja: @refuzuar.ditelindja, email: @refuzuar.email, emri: @refuzuar.emri, mbiemri: @refuzuar.mbiemri, pozi_id: @refuzuar.pozi_id, status_id: @refuzuar.status_id, tel: @refuzuar.tel, vendlindja: @refuzuar.vendlindja }
    assert_redirected_to refuzuar_path(assigns(:refuzuar))
  end

  test "should destroy refuzuar" do
    assert_difference('Refuzuar.count', -1) do
      delete :destroy, id: @refuzuar
    end

    assert_redirected_to refuzuars_path
  end
end
