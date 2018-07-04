json.players @players do |player|
  json.id player.id
  json.nombre player.nombre
  json.apellido player.apellido
  json.fecha_nacimiento player.fecha_nacimiento
  json.ciudad_nacimiento player.ciudad_nacimiento
  json.posicion player.posicion
  json.dorsal player.dorsal
  json.apodo player.apodo
  json.participaciones player.participaciones
  json.goles player.goles
  json.id_pais player.country_id
end

