class AddHospitalToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :hospital, foreign_key: true
  end
end
