class RegistrationsController < Devise::RegistrationsController
    respond_to :js

    def new
        super
    end

end