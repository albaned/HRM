class AddTrajnimiDrejtimiToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :trajnimi_drejtimi, :string
  end
end
