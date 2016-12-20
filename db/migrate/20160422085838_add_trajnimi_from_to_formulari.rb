class AddTrajnimiFromToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :trajnimi_from, :date
  end
end
