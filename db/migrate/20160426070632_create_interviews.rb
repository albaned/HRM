class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
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
