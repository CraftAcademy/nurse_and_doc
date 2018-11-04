class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def new
    @hospital = Hospital.new
  end
  
  def create
    @hospital = Hospital.create(hospital_params)
    if hospital.persisted?
      redirect_to hospitals_path, notice: 'Hospital added'
    else
      errors = user.errors.full_messages
      render json: { message: "Hospital already exists" }, status: 422
    end
  end

  # def show
  #   @hospitals = Hospital.find(params[:id])
  # end

  private

  def hospital_params
    params.require(:hospital).permit(:name)
  end
end
