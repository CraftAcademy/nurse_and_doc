class AddWorkingHoursToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :working_hours, :string
  end
end
