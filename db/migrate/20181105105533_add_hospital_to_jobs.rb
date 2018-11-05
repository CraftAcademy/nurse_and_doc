class AddHospitalToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :hospital, :string
  end
end
