class AddInterviewTimeToDergoemail < ActiveRecord::Migration
  def change
    add_column :dergoemails, :interview_time, :time
  end
end
