json.registrations @users do |user|
	json.id user.id
	json.email user.email
	json.cedula user.cedula
	json.nombre user.nombre
	json.apellido user.apellido
	json.estatus user.estatus
	json.nacimiento user.nacimiento
	json.facebook user.facebook
	json.instagram user.instagram
	json.twitter user.twitter
	json.id_pais user.country.country_id
	
end