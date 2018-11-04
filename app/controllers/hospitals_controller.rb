class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def new
  end
  
  def create
    @hospital = Hospital.new(hospital_params)
    if @hospital.save
      redirect_to hospitals_path
    else
      render'new'
    end
  end

  def show
    @hospitals = Hospital.find(params[:id])
  end

  private

  def hospital_params
    params.require(:hospital).permit(:name)
  end
end
