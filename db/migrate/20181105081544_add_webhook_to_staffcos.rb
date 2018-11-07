class AddWebhookToStaffcos < ActiveRecord::Migration[5.2]
  def change
    add_column :staffcos, :webhook, :string
  end
end
