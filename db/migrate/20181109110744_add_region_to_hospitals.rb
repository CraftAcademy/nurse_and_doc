class AddRegionToHospitals < ActiveRecord::Migration[5.2]
  def change
    add_reference :hospitals, :region, foreign_key: true
  end
end
