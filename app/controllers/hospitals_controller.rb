class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end
  
  def create
    hospital = Hospital.new(hospital_params)
    if @hospitals.save
      redirect_to hospitals_path
    else
      render'new'
    end
  end

  private
  
  def hospital_params
    params.require(:hospital).permit(:name)
  end
end
