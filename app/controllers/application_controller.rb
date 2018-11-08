class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    before_action :set_locale, :configure_permitted_parameters, if: :devise_controller?

    private
    def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :phone])
    end
end
