class AddColumnSchedules < ActiveRecord::Migration[6.1]
  def up
    add_column :schedules, :place, :string
  end

  def down
    remove_column :schedules, :place, :string
  end
  
  def change
  end
end
