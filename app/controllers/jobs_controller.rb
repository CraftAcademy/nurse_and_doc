class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_path, notice: "Company was successfully created."
    else
      render :new
    end
  end

  def job_params
    params.require(:job).permit(:name)
  end

end
