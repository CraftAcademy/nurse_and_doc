class AddProfessionToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :profession, :string
  end
end
