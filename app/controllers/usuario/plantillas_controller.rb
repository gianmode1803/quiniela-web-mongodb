class Usuario::PlantillasController < ApplicationController
before_action :authenticate_user!
before_action :chequear_admin
layout 'administrator'


  def index
  end  

   def chequear_admin     #Este método prohibe que un usuario trate de entrar al perfil del administrador y viceversa
  		if current_user.admin?
  			redirect_to root_path
  		else
  			
    	end            
  	end	

 
end
