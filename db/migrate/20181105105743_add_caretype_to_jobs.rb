class AddCaretypeToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :caretype, :string
  end
end
