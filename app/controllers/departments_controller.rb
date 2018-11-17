class DepartmentsController < ApplicationController
  def create
    binding.pry
    if Department.create(department_params)
      flash.now[:notice] = "Department has been added"
    end
  end

  private

  def department_params
    params.require(:department).permit(:name, :hospital_id)
  end
end
