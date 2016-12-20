class AddQytetetIdToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :qytetet_id, :integer
  end
  def down
    remove_column :formularis, :qutetet_id
  end
end
