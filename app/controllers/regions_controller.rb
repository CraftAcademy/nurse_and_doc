class RegionsController < ApplicationController
    
    def index
       @regions = Region.all 
    end

    def create
    end 
end
