class AddAdresaToFormulari < ActiveRecord::Migration
  def change
    add_column :formularis, :adresa, :string
  end
  def down
    remove_column :formularis, :adresa
  end
end
