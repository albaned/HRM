class AddQytetetIdToRefuzuar < ActiveRecord::Migration
  def change
    add_column :refuzuars, :qytetet_id, :integer
  end
end
