class CreatePcs < ActiveRecord::Migration
  def change
    create_table :pcs do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
