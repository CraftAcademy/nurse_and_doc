class JobsController < ApplicationController
  def index
    @staffcos = Staffco.all
  end
end
