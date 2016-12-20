class CreatePozis < ActiveRecord::Migration
  def change
    create_table :pozis do |t|
      t.string :description
      t.string :job_description
      t.string :skills
      t.string :about_compnay

      t.timestamps null: false
    end
  end
end