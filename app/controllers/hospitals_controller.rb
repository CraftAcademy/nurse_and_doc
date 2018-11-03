class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:name])
  end

  def create
    @hospital = Hospital.new(params[:hospital])
 
    @hospital.save
    redirect_to @hospital
  end 

end
