class JobsController < ApplicationController
  def index
    @staffcos = Staffcos.all
  end
end
