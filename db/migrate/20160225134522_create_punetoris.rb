class CreatePunetoris < ActiveRecord::Migration
  def change
    create_table :punetoris do |t|
      t.string :emri
      t.string :mbiemri
      t.string :telefoni
      t.string :ditelindja
      t.string :letenjoftimi
      t.string :vendlindja
      t.string :shkollimi
      t.string :kontrata_from
      t.string :kontrata_to
      t.string :email
      t.string :encrypted_password

      t.timestamps null: false
    end
  end
end
