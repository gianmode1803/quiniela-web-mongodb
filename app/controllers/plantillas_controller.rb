class PlantillasController < ApplicationController
layout :colocar_layout

def landpage
end

def formulario
end

def login
end

def chequear_admin
    if current_user.admin?
        redirect_to administrator_plantillas_index_path
      else
        redirect_to usuario_plantillas_index_path 
    end 
    
  end

  

private

  def colocar_layout
    case action_name
    when "landpage"
      "application"
    
    end
  end

end
