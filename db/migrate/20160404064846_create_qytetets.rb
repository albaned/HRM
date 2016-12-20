class CreateQytetets < ActiveRecord::Migration
  def change
    create_table :qytetets do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
