class SessionsController < Devise::SessionsController
 prepend_before_action :check_captcha,  only: [:create	] 


def create #POST que responde al método New el cual envía peticiones GET
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
      respond_to do |format|
    format.html { respond_with resource, location: after_sign_in_path_for(resource) }
    format.json { render json: Oj.dump(resource.as_json, mode: :compat) }#Envia la respuesta en formato JSON
      end
  
  end





  private
    def check_captcha        #Método que permite la verificación del recaptcha 
      unless verify_recaptcha  
        self.resource = resource_class.new sign_in_params
        #resource.validate # Para ver otros errores de validación
        respond_with_navigational(resource) {render :new}
      end 
    end


protected


def after_sign_in_path_for(resource) #Método que llama Create el cual redirige a la vista del perfil correspondiente
    resource ||= User.new            #según el rol del usuario
    if resource.admin?
      administrator_plantillas_index_path
    else
      usuario_plantillas_index_path 
    end 
  end




end
