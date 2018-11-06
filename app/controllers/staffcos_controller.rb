# frozen_string_literal: true

class StaffcosController < ApplicationController

  def index
    @staffcos = Staffco.all
  end

  def create
    staffco = Staffco.create(staffco_params)
    if staffco.persisted?
      redirect_to staffcos_path, notice: 'The staffing company was successfully created'
    else
      errors = staffco.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end

  private
  def staffco_params
    params.require(:staffco).permit(:name, :email, :contact_name, :phone, :webhook)
  end

end
