class RegionsController < ApplicationController
before_action :authenticate_user!, only: [:show]

    def new
        binding.pry
    end 

end
