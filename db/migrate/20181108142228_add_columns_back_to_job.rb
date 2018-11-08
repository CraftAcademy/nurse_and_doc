class AddColumnsBackToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :profession, :string
    add_column :jobs, :hospital, :string
    add_column :jobs, :department, :string
    add_column :jobs, :license, :string
    add_column :jobs, :care_type, :string
  end
end
