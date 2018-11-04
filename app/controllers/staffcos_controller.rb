# frozen_string_literal: true

class StaffcosController < ApplicationController
  def index
    @staffco = Staffco.all
  end

  def new
    @staffco = Staffco.new
  end

  def create
    unless Staffco.exists?(staffco_params)

    staffco = Staffco.create(staffco_params)
    if staffco.persisted?
      redirect_to staffcos_path, notice: 'The staffing company was successfully created'
      #waiting for rsc can create jobs pr to include accessibility errors
      # errors = user.errors.full_messages
      # render json: { message: errors }, status: 422
    end
  end
end

  def show
    @staffco = Staffco.find(params[:id])
  end

private

  def staffco_params
    params.require(:staffco).permit(:name, :email)
  end
end
