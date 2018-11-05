class AddLicenseToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :license, :string
  end
end
