class CreateFormularis < ActiveRecord::Migration
  def change
    create_table :formularis do |t|
      t.string :pozita
      t.string :emri
      t.string :mbiemri
      t.date :ditelindja
      t.string :vendlindja
      t.string :nacionaliteti
      t.string :leternjoftimi
      t.string :tel
      t.string :email
      t.date :edukimi_from
      t.date :edukimi_to
      t.boolean :ongoing
      t.string :edukimi_institucioni
      t.string :edukimi_drejtimi
      t.string :edukimi_titulli
      t.date :eksperienca_from
      t.date :eksperienca_to
      t.string :eksperienca_kompania
      t.string :eksperienca_pozita
      t.string :gjuha
      t.string :gjuha_niveli
      t.string :njohurit_kompjuterike
      t.string :referenca_emri
      t.string :referenca_file
      t.string :letra_motivuese
      t.string :cv_file
      t.text :intervista
      t.text :testet
      t.date :kontrata_from
      t.date :kontrata_to
      t.integer :page

      t.timestamps null: false
    end
  end
end
