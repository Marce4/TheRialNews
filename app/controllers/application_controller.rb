class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to news_path, notice: "No estas autorizado para realizar esta acción"
        end
    end


    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :photo])
    end

end
