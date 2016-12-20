class AddLevelToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :level, :boolean
  end
end
