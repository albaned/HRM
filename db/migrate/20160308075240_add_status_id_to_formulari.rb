class AddStatusIdToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :status_id, :integer
  end
  def down
    remove_column :formularis, :status_id
  end
end
