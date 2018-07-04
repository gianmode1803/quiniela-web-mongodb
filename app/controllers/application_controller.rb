class ApplicationController < ActionController::Base
  layout :colocar_layout,if: :devise_controller?	
  before_action :configure_permitted_paramaters, if: :devise_controller?	
  protect_from_forgery with: :exception

  

private

  def colocar_layout
        "registro"
  end


protected

def configure_permitted_paramaters  #Método que permite el paso de parámetros a devise
	devise_parameter_sanitizer.permit(:sign_up, keys: [:cedula,:nombre,:apellido,:telefono,:nacimiento,
		:estatus,:postal,:admin,:facebook,:twitter,:instagram,:country_id])
	devise_parameter_sanitizer.permit(:sign_in, keys: [:admin])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:apellido,:telefono,:nacimiento,
    :estatus,:postal,:facebook,:twitter,:instagram])


end




end
