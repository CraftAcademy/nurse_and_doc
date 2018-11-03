class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end
  
  def new
  end

  def show
    @hospital = Hospital.find(params[:name])
  end

  def create
    hospital = Hospital.create(hospital_params)
    binding.pry
    if hospital.persisted?
      redirect_to hospitals_path
    else
      redirect_to hospitals_path, notice: "Hospital already exists. Your hospital could not be saved."
    end
  end

  private
  def hospital_params
    params.require(:hospital).permit(:name)
  end
end
