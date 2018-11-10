class AddRemainingColumnsToJobForm < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :requirements, :text
    add_column :jobs, :other_requirements, :string
    add_column :jobs, :description, :text
    add_column :jobs, :years_experience, :integer
    add_column :jobs, :application_deadline, :string
    add_column :jobs, :accomodation_arrangement, :boolean
    add_column :jobs, :accomodation_budget, :string
    add_column :jobs, :accomodation_comment, :text
    add_column :jobs, :travel_arranged, :boolean
    add_column :jobs, :travel_budget, :string
    add_column :jobs, :travel_comment, :text
    add_column :jobs, :other_pay, :boolean
    add_column :jobs, :other_budget, :string
    add_column :jobs, :other_comment, :text
    add_column :jobs, :reference_number, :string
  end
end
