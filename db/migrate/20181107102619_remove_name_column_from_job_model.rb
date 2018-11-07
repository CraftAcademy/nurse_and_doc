class RemoveNameColumnFromJobModel < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :name
  end
end
