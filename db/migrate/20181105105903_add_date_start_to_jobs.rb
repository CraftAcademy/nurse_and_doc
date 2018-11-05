class AddDateStartToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :date_start, :string
  end
end
