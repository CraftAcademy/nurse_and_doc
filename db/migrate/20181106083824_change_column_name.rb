class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :staffcos, :personal_name, :contact_name
  end
end
