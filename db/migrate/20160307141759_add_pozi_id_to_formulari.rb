class AddPoziIdToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :pozi_id, :integer
  end
  def down
    remove_column :formularis, :pozi_id
  end
end
