class AssociationBetweenHospitalsAndDepartments < ActiveRecord::Migration[5.2]
  def change
    add_reference :departments, :hospital, foreign_key: true
  end
end
