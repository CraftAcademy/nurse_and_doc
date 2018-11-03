class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(params[:hospital])

    if @hospital.persisted?
      redirect_to hospitals_path
    else
      flash[:error] = "Hospital already exists. Your hospital could not be saved"
      render :new
 
    @hospital.save
    redirect_to @hospital
  end 

end
