class AddRegionsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :region, foreign_key: true
  end
end
