class AddFormulariIdToKontratum < ActiveRecord::Migration
  def change
    add_column :kontrata, :formulari_id, :integer
  end
end
