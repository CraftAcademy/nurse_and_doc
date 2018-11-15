class RegionsController < ApplicationController
before_action :authenticate_user!, only: [:show]

    def new
    end 

end
