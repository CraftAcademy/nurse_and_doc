# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :js
  before_action :configure_permitted_parameters, only: [:create]

  def new
    super
  end

  def create
    region = Region.find(sign_up_params[:region])
    build_resource(sign_up_params.except(sign_up_params[:region]).merge(region: region))
    if resource.save
      flash[:notice] = "RSC user #{resource.email} created within #{resource.region.name} region."
      sign_up(resource_name, resource)
      redirect_to after_sign_in_path_for(resource)
    else
      errors = resource.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end

  protected

  def build_resource(hash = {})
    if hash[:email]
      self.resource = resource_class.where(:email => hash[:email]).first
      if self.resource && self.resource.respond_to?(:invited_to_sign_up?) && self.resource.invited_to_sign_up?
        self.resource.attributes = hash
        self.resource.send_confirmation_instructions if self.resource.confirmation_required_for_invited?
        self.resource.accept_invitation
      else
        self.resource = nil
      end
    end
    self.resource ||= super
  end

end
