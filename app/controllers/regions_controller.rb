class RegionsController < ApplicationController
before_action :authenticate_user!, only: [:show]

    def create
        user = current_user
        region = Region.create(region_params)
        if region.persisted?
            user.region_id = region.id
        else
        end 
    end
    private 

    def region_params
        params.require(:region).permit(:name) 
    end
end
