require 'test_helper'

class FormularisControllerTest < ActionController::TestCase
  setup do
    @formulari = formularis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formularis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formulari" do
    assert_difference('Formulari.count') do
      post :create, formulari: { cv_file: @formulari.cv_file, ditelindja: @formulari.ditelindja, edukimi_drejtimi: @formulari.edukimi_drejtimi, edukimi_from: @formulari.edukimi_from, edukimi_institucioni: @formulari.edukimi_institucioni, edukimi_titulli: @formulari.edukimi_titulli, edukimi_to: @formulari.edukimi_to, eksperienca_from: @formulari.eksperienca_from, eksperienca_kompania: @formulari.eksperienca_kompania, eksperienca_pozita: @formulari.eksperienca_pozita, eksperienca_to: @formulari.eksperienca_to, email: @formulari.email, emri: @formulari.emri, gjuha: @formulari.gjuha, gjuha_niveli: @formulari.gjuha_niveli, intervista: @formulari.intervista, kontrata_from: @formulari.kontrata_from, kontrata_to: @formulari.kontrata_to, leternjoftimi: @formulari.leternjoftimi, letra_motivuese: @formulari.letra_motivuese, mbiemri: @formulari.mbiemri, nacionaliteti: @formulari.nacionaliteti, njohurit_kompjuterike: @formulari.njohurit_kompjuterike, page: @formulari.page, pozita: @formulari.pozita, referenca_file: @formulari.referenca_file, tel: @formulari.tel, testet: @formulari.testet, vendlindja: @formulari.vendlindja }
    end

    assert_redirected_to formulari_path(assigns(:formulari))
  end

  test "should show formulari" do
    get :show, id: @formulari
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formulari
    assert_response :success
  end

  test "should update formulari" do
    patch :update, id: @formulari, formulari: { cv_file: @formulari.cv_file, ditelindja: @formulari.ditelindja, edukimi_drejtimi: @formulari.edukimi_drejtimi, edukimi_from: @formulari.edukimi_from, edukimi_institucioni: @formulari.edukimi_institucioni, edukimi_titulli: @formulari.edukimi_titulli, edukimi_to: @formulari.edukimi_to, eksperienca_from: @formulari.eksperienca_from, eksperienca_kompania: @formulari.eksperienca_kompania, eksperienca_pozita: @formulari.eksperienca_pozita, eksperienca_to: @formulari.eksperienca_to, email: @formulari.email, emri: @formulari.emri, gjuha: @formulari.gjuha, gjuha_niveli: @formulari.gjuha_niveli, intervista: @formulari.intervista, kontrata_from: @formulari.kontrata_from, kontrata_to: @formulari.kontrata_to, leternjoftimi: @formulari.leternjoftimi, letra_motivuese: @formulari.letra_motivuese, mbiemri: @formulari.mbiemri, nacionaliteti: @formulari.nacionaliteti, njohurit_kompjuterike: @formulari.njohurit_kompjuterike, page: @formulari.page, pozita: @formulari.pozita, referenca_file: @formulari.referenca_file, tel: @formulari.tel, testet: @formulari.testet, vendlindja: @formulari.vendlindja }
    assert_redirected_to formulari_path(assigns(:formulari))
  end

  test "should destroy formulari" do
    assert_difference('Formulari.count', -1) do
      delete :destroy, id: @formulari
    end

    assert_redirected_to formularis_path
  end
end
