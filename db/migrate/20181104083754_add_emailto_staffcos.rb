class AddEmailtoStaffcos < ActiveRecord::Migration[5.2]
  def change
    add_column :staffcos, :email, :string
  end
end
