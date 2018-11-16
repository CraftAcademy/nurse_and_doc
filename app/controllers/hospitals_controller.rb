class HospitalsController < ApplicationController
  
  def index
    @hospitals = policy_scope(Hospital)
  end

  def create
    hospital = Hospital.create(hospital_params.merge(region: current_user.region))
    if hospital.persisted?
      redirect_to hospitals_path, notice: 'Hospital added'
    else
      redirect_to hospitals_path, notice: 'Hospital already exists. Your hospital could not be saved'
    end
  end 

  def destroy
    if Hospital.find(params[:id]).destroy
      redirect_to hospitals_path, notice: 'Hospital was successfully removed.'
    else
      redirect_to hospitals_path, notice: 'Something went wrong, Hospital not removed.'
    end
  end

  private

  def hospital_params
    params.require(:hospital).permit(:name, :region)
  end
end
