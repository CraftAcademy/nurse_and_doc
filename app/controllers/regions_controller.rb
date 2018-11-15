class RegionsController < ApplicationController
before_action :authenticate_user!, only: [:show]

    def create
        # region = Region.find(sign_up_params[:region])
        # build_resource(sign_up_params.except(sign_up_params[:region]).merge(region: region))
        # if resource.save?
    end 

end
