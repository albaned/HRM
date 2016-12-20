class AddReferencaToPunetori < ActiveRecord::Migration
  def change
    add_column :punetoris, :referenca, :string
  end
end
