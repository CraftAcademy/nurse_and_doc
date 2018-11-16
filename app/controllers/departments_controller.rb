class DepartmentsController < ApplicationController

    def index
        binding.pry
        @departments = Department.find(params[:hospital_id])
    end
end

def department_params
    require(:department)
end