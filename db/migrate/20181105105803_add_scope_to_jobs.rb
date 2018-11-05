class AddScopeToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :scope, :string
  end
end
