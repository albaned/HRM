require 'test_helper'

class InterviewsControllerTest < ActionController::TestCase
  setup do
    @interview = interviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interview" do
    assert_difference('Interview.count') do
      post :create, interview: { ditelindja: @interview.ditelindja, email: @interview.email, emri: @interview.emri, mbiemri: @interview.mbiemri, pozi_id: @interview.pozi_id, status_id: @interview.status_id, tel: @interview.tel, vendlindja: @interview.vendlindja }
    end

    assert_redirected_to interview_path(assigns(:interview))
  end

  test "should show interview" do
    get :show, id: @interview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interview
    assert_response :success
  end

  test "should update interview" do
    patch :update, id: @interview, interview: { ditelindja: @interview.ditelindja, email: @interview.email, emri: @interview.emri, mbiemri: @interview.mbiemri, pozi_id: @interview.pozi_id, status_id: @interview.status_id, tel: @interview.tel, vendlindja: @interview.vendlindja }
    assert_redirected_to interview_path(assigns(:interview))
  end

  test "should destroy interview" do
    assert_difference('Interview.count', -1) do
      delete :destroy, id: @interview
    end

    assert_redirected_to interviews_path
  end
end
