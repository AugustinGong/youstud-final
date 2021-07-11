class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, :alert => exception.message
    end
    
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:user_update, keys: [:username, :first_name, :last_name, :image, :image_cache])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, :password])
    end
end
