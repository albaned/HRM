class AddStausiKontratesToPunetori < ActiveRecord::Migration
  def change
    add_column :punetoris, :statusi_kontrates, :boolean
  end
end
