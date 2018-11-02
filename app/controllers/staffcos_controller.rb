class StaffcosController < ApplicationController
  def index
    @staffcos = Staffco.all
  end
end
