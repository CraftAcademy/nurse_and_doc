class AddPhoneToStaffcos < ActiveRecord::Migration[5.2]
  def change
    add_column :staffcos, :phone, :string
  end
end
