class CreateDergoemails < ActiveRecord::Migration
  def change
    create_table :dergoemails do |t|
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
