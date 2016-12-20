class AddDergoemailIdToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :dergoemail_id, :integer
  end
  def down
    remove_column :formularis, :dergoemail_id
  end
end
