class AddRegionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :region, foreign_key: true
  end
end
