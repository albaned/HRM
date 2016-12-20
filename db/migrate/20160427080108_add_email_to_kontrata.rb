class AddEmailToKontrata < ActiveRecord::Migration
  def change
    add_column :kontrata, :email, :string
  end
end
