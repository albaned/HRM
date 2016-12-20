class AddPunetoriIdToKontratum < ActiveRecord::Migration
  def change
    add_column :kontrata, :punetori_id, :integer
  end
end
