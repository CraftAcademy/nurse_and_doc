class RegionsController < ApplicationController
before_action :authenticate_user!, only [:show]

    def create
    end 

    def show
        @user = authorize User.find(params[:id])
        authorize @region
    end
end
