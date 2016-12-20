class AddPcIdToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :pc_id, :integer
  end
  def down
    remove_column :formularis, :pc_id
  end
end
