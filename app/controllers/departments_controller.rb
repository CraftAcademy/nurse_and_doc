class DepartmentsController < ApplicationController

    def index
        binding.pry
        @departments = Department.find(params[:id])
    end  
end
