class RemoveColumnsFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :profession
    remove_column :jobs, :department
    remove_column :jobs, :license
    remove_column :jobs, :caretype
  end
end
