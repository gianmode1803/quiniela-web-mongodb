class RegistrationsController < Devise::RegistrationsController

  def create #POST responde a las peticiones del método New el cual hace peticiones GET
    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        respond_to do |format|
            format.html { redirect_to new_user_session_path } # Redirige a la vista New de sessions_controller
            format.json { render json: Oj.dump(resource.as_json, mode: :compat) }#Envía la respuesta al crear un usuario en formato JSON
        end
       
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  def update #POST responde a las peticiones del método Edit el cual hace peticiones GET
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

    resource_updated = update_resource(resource, account_update_params)
    yield resource if block_given?
    if resource_updated
      if is_flashing_format?
        flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
          :update_needs_confirmation : :updated
        set_flash_message :notice, flash_key
      end
      bypass_sign_in resource, scope: resource_name
      respond_to do |format|
            format.html { respond_with resource, location: after_update_path_for(resource) }
            format.json { render json: Oj.dump(resource.as_json, mode: :compat) }#Envía la respuesta al editar un usuario en formato JSON
        end
      
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
  
  protected

  
  def after_update_path_for(resource) #Después de editar al usuario se llama a este método el cual redirige a la ruta
    if resource.admin?                #del perfil correspondiente dependiendo de el rol del usuario
      administrator_plantillas_index_path
    else
      usuario_plantillas_index_path 
    end 
  end



end