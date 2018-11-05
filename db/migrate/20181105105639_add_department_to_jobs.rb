class AddDepartmentToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :department, :string
  end
end
