class RegionsController < ApplicationController
    has_many :users

    def index
       @regions = Region.all 
    end
end
