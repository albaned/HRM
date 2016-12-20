class AddTrajnimiInstitucioniToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :trajnimi_institucioni, :string
  end
end
