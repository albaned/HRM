class AddPkVkToKontrata < ActiveRecord::Migration
  def change
    add_column :kontrata, :pk, :integer, default: 0
    add_column :kontrata, :vk, :integer, default: 0
  end
end
