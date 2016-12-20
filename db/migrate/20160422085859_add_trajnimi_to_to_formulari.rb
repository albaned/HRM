class AddTrajnimiToToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :trajnimi_to, :date
  end
end
