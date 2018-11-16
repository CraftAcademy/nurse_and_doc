class RegionsController < ApplicationController
before_action :authenticate_user!, only: [:create]

    def create
        region = Region.create(region_params)
        if region.persisted?
            current_user.region = region
            current_user.save
            redirect_to root_path, notice: 'All good'
        else
        end 
    end
    private 

    def region_params
        params.require(:region).permit(:name) 
    end
end
