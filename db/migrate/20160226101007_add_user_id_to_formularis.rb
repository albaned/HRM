class AddUserIdToFormularis < ActiveRecord::Migration
  def change
    add_column :formularis, :user_id, :integer
  end
  def down
    remove_column :formularis, :user_id
  end
end
