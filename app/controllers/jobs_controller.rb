# frozen_string_literal: true

class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def create
    hospital = Hospital.find_by(name: params[:job][:hospital])
    job = hospital.jobs.create(job_params)
    # job = Job.create(job_params.merge(hospital: hospital))
    if job.persisted?
      redirect_to root_path, notice: 'The job was successfully created'
    else
      errors = job.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end

  def new
    @scopes = [["Full Time"], ["Part Time"], ["Shifts"]]
    @working_hours = [["Day"], ["Evening"], ["Night"], ["Weekend"], ["On Call"]] 
  end

  def destroy
    if Job.find(params[:id]).destroy
      redirect_to root_path, notice: 'Job was successfully deleted.'
    else
      redirect_to root_path, notice: 'Something went wrong, job not deleted.'
    end
  end

  def job_params

    params.require(:job).permit(:scope, :working_hours, 
                                :date_start, :date_finish, 
                                :profession, 
                                :license, :care_type, 
                                :department, :requirements,
                                :other_requirements, :description,
                                :years_experience, :application_deadline,
                                :reference_number
                                )
  end
end
