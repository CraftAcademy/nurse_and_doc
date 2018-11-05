class AddPersonalNametoStaffcos < ActiveRecord::Migration[5.2]
  def change
    add_column :staffcos, :personal_name, :string
  end
end
