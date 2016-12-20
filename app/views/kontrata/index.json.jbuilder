json.array!(@kontrata) do |kontratum|
  json.extract! kontratum, :id, :biznesi, :nr_biznesit, :emri, :emri_prindit, :mbiemri, :vendlindja, :ditelindja, :adresa, :qyteti, :shteti, :leternjoftimi, :pozita, :kontrata_prej, :kontrata_deri, :orari_jave, :java_ditet, :orari_from, :orari_to, :pauza, :pushimi_vjetore, :paga_kontrata, :paga_text, :data_nenshkrimit
  json.url kontratum_url(kontratum, format: :json)
end
