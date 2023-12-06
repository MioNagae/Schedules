class RenameUpdateColumnSchedules < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedules, :update, :updateday
  end
end
