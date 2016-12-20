class CreateGjuhas < ActiveRecord::Migration
  def change
    create_table :gjuhas do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
