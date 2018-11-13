class AddRegionsToStaffCo < ActiveRecord::Migration[5.2]
  def change
    add_reference :staffcos, :region, foreign_key: true
  end
end
