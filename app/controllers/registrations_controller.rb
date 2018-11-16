# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :js
  before_action :configure_permitted_parameters, only: [:create]

  def new
    super
  end

  def create
    build_resource(sign_up_params.except(sign_up_params[:region]))
    if resource.save
      flash[:notice] = "RSC user #{resource.email} created within #{resource.region} region."
      sign_up(resource_name, resource)
      redirect_to after_sign_in_path_for(resource)
    else
      errors = resource.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end
end
