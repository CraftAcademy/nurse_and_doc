# frozen_string_literal: true

class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create(job_params)
    if @job.persisted?
      render :index
    else
      render :new
    end
  end

  def job_params
    params.require(:job).permit(:name)
  end
end
