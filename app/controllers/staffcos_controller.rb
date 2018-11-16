# frozen_string_literal: true

class StaffcosController < ApplicationController
  def index
    @staffcos = policy_scope(Staffco)
  end

  def create
    staffco = Staffco.create(staffco_params.merge(region: current_user.region))
    if staffco.persisted?
      redirect_to staffcos_path, notice: 'The staffing company was successfully created'
    else
      errors = staffco.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end

  def destroy
    if Staffco.find(params[:id]).destroy
      redirect_to staffcos_path, notice: 'Staffing Company was successfully removed.'
    else
      redirect_to staffcos_path, notice: 'Something went wrong, Staffing Company not removed.'
    end
  end

  private
  def staffco_params
    params.require(:staffco).permit(:name, :email, :contact_name, :phone, :webhook)
  end

end
