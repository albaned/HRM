require 'test_helper'

class DergoemailsControllerTest < ActionController::TestCase
  setup do
    @dergoemail = dergoemails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dergoemails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dergoemail" do
    assert_difference('Dergoemail.count') do
      post :create, dergoemail: { body: @dergoemail.body, subject: @dergoemail.subject }
    end

    assert_redirected_to dergoemail_path(assigns(:dergoemail))
  end

  test "should show dergoemail" do
    get :show, id: @dergoemail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dergoemail
    assert_response :success
  end

  test "should update dergoemail" do
    patch :update, id: @dergoemail, dergoemail: { body: @dergoemail.body, subject: @dergoemail.subject }
    assert_redirected_to dergoemail_path(assigns(:dergoemail))
  end

  test "should destroy dergoemail" do
    assert_difference('Dergoemail.count', -1) do
      delete :destroy, id: @dergoemail
    end

    assert_redirected_to dergoemails_path
  end
end
