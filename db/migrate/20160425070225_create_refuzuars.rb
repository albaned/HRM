class CreateRefuzuars < ActiveRecord::Migration
  def change
    create_table :refuzuars do |t|
      t.integer :pozi_id
      t.string :emri
      t.string :mbiemri
      t.integer :status_id
      t.date :ditelindja
      t.string :vendlindja
      t.string :tel
      t.string :email

      t.timestamps null: false
    end
  end
end
