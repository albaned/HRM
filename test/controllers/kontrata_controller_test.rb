require 'test_helper'

class KontrataControllerTest < ActionController::TestCase
  setup do
    @kontratum = kontrata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontrata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kontratum" do
    assert_difference('Kontratum.count') do
      post :create, kontratum: { adresa: @kontratum.adresa, biznesi: @kontratum.biznesi, data_nenshkrimit: @kontratum.data_nenshkrimit, ditelindja: @kontratum.ditelindja, emri: @kontratum.emri, emri_prindit: @kontratum.emri_prindit, java_ditet: @kontratum.java_ditet, kontrata_deri: @kontratum.kontrata_deri, kontrata_prej: @kontratum.kontrata_prej, leternjoftimi: @kontratum.leternjoftimi, mbiemri: @kontratum.mbiemri, nr_biznesit: @kontratum.nr_biznesit, orari_from: @kontratum.orari_from, orari_jave: @kontratum.orari_jave, orari_to: @kontratum.orari_to, paga_kontrata: @kontratum.paga_kontrata, paga_text: @kontratum.paga_text, pauza: @kontratum.pauza, pozita: @kontratum.pozita, pushimi_vjetore: @kontratum.pushimi_vjetore, qyteti: @kontratum.qyteti, shteti: @kontratum.shteti, vendlindja: @kontratum.vendlindja }
    end

    assert_redirected_to kontratum_path(assigns(:kontratum))
  end

  test "should show kontratum" do
    get :show, id: @kontratum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kontratum
    assert_response :success
  end

  test "should update kontratum" do
    patch :update, id: @kontratum, kontratum: { adresa: @kontratum.adresa, biznesi: @kontratum.biznesi, data_nenshkrimit: @kontratum.data_nenshkrimit, ditelindja: @kontratum.ditelindja, emri: @kontratum.emri, emri_prindit: @kontratum.emri_prindit, java_ditet: @kontratum.java_ditet, kontrata_deri: @kontratum.kontrata_deri, kontrata_prej: @kontratum.kontrata_prej, leternjoftimi: @kontratum.leternjoftimi, mbiemri: @kontratum.mbiemri, nr_biznesit: @kontratum.nr_biznesit, orari_from: @kontratum.orari_from, orari_jave: @kontratum.orari_jave, orari_to: @kontratum.orari_to, paga_kontrata: @kontratum.paga_kontrata, paga_text: @kontratum.paga_text, pauza: @kontratum.pauza, pozita: @kontratum.pozita, pushimi_vjetore: @kontratum.pushimi_vjetore, qyteti: @kontratum.qyteti, shteti: @kontratum.shteti, vendlindja: @kontratum.vendlindja }
    assert_redirected_to kontratum_path(assigns(:kontratum))
  end

  test "should destroy kontratum" do
    assert_difference('Kontratum.count', -1) do
      delete :destroy, id: @kontratum
    end

    assert_redirected_to kontrata_path
  end
end
