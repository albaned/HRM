json.array!(@formularis) do |formulari|
  json.extract! formulari, :id, :pozi_id, :emri, :mbiemri, :ditelindja, :vendlindja, :nacionaliteti, :leternjoftimi, :tel, :email, :edukimi_from, :edukimi_to, :edukimi_institucioni, :edukimi_drejtimi, :edukimi_titulli, :eksperienca_from, :eksperienca_to, :eksperienca_kompania, :eksperienca_pozita, :gjuha, :gjuha_niveli, :njohurit_kompjuterike, :referenca_file, :letra_motivuese, :cv_file, :intervista, :testet, :kontrata_from, :kontrata_to, :page
  json.url formulari_url(formulari, format: :json)
end
