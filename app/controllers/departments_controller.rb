class DepartmentsController < ApplicationController
  def create
    department = Department.create(department_params)
    if department.persisted?
      hospital = Hospital.find(params[:department][:hospital_id])
      html = render_to_string('hospitals/_list', formats: :html, layout: false, locals: { hospital: hospital })
      render json: { message: 'Department has been added', html: html }
    else
      redirect_to hospitals_path, notice: 'Department already exists. Your department could not be saved'
    end
  end

  private

  def department_params
    params.require(:department).permit(:name, :hospital_id)
  end
end
