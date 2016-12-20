class AddKodiToPozi < ActiveRecord::Migration
  def change
    add_column :pozis, :kodi, :string
  end
  def down
    remove_column :pozis, :kodi
  end
end
