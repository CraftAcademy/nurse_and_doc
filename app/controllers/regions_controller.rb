class RegionsController < ApplicationController
before_action :authenticate_user!, only: [:show]

    def create
        user = current_user
        region = Region.create(params[:region_id])
        if region.persisted?
            # binding.pry
            user.region_id = region.id
        else
        end 
    end
    private 

    def region_params
        params.require(:region).permit(:name) 
    end
end
