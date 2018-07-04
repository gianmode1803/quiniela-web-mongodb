class Administrator::PlantillasController < ApplicationController
before_action :authenticate_user!
before_action :chequear_admin
layout 'administrator'


  def index

  end

  def page_login
    
  end
  
  def chequear_admin      #Esta acción prohibe que un usuario trate de entrar al perfil del administrador y viceversa
  	if current_user.admin?         
  		else
  			  			redirect_to root_path
  	end	
  	
  end
 
end
