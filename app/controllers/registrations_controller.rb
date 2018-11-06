# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :js

  def new
    super
  end

  def create
    binding.pry
    build_resource(sign_up_params)
    if resource.save
      flash[:notice] = 'Welcome! You have signed up successfully.'
      sign_up(resource_name, resource)
      redirect_to after_sign_in_path_for(resource)
    else
      errors = resource.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end
end
