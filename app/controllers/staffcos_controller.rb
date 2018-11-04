# frozen_string_literal: true

class StaffcosController < ApplicationController
  def index
    @staffcos = Staffco.all
  end

  def new
    @staffcos = Staffco.new
  end

  def create
    staffco = Staffco.create(staffco_params)
    if staffco.persisted?
      redirect_to staffcos_path, notice: 'The staffing company was successfully created'
    else
      render :new
    end
  end

  def show
    @staffcos = Staffco.find(params[:id])
  end

private

  def staffco_params
    params.require(:staffco).permit(:name, :email)
  end
end
