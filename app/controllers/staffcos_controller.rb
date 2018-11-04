class StaffcosController < ApplicationController
  def index
    @staffcos = Staffco.all
  end

  def create
    @staffcos = Staffco.new(staffco_params)
    if @staffcos.save
    redirect_to staffcos_path, notice: "Company was successfully created."
    else
      render 'new'
    end
  end

private

  def staffco_params
    params.require(:staffco).permit(:name, :email)
  end
end
