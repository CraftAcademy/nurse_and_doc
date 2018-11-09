class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :set_locale
    before_action :configure_permitted_parameters, if: :devise_controller?

    private
    def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
    end
 
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:region])
        devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :invitation_token])
    end

end
