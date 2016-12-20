class AddGjuhaIdToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :gjuha_id, :integer
  end
  def down
    remove_column :formularis, :gjuha_id
  end
end
