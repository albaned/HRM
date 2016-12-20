class CreateKontrata < ActiveRecord::Migration
  def change
    create_table :kontrata do |t|
      t.string :biznesi
      t.string :nr_biznesit
      t.string :emri
      t.string :emri_prindit
      t.string :mbiemri
      t.string :vendlindja
      t.date :ditelindja
      t.string :adresa
      t.string :qyteti
      t.string :shteti
      t.string :leternjoftimi
      t.string :pozita
      t.date :kontrata_prej
      t.date :kontrata_deri
      t.string :orari_jave
      t.string :java_ditet
      t.string :orari_from
      t.string :orari_to
      t.string :pauza
      t.string :pushimi_vjetore
      t.string :paga_kontrata
      t.string :paga_text
      t.date :data_nenshkrimit

      t.timestamps null: false
    end
  end
end
