class AddDateFinishToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :date_finish, :string
  end
end
