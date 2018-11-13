class RemoveHospitalColumnFromJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :hospital
  end
end
