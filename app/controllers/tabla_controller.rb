class TablaController < ApplicationController

  def preferencias
		#arreglo con las imagenes de los paises con el numero de preferencia de usuarios
		@preferencia = User.tabla_preferencia
		@preferencia = @preferencia.to_a
		#Numero total de usuarios registrados en el sistema
		@total = User.count
		@total = @total.to_i
  end
end
