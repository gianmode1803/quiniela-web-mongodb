json.matches @matches do |match|
	json.equipo match.country.nombre
	json.goles match.events.result(match.id)
	json.grupo match.country.grupo
	json.fecha match.calendar.fecha
	json.hora match.calendar.hora
	json.fase match.calendar.fase
	json.estadio match.calendar.stadium.nombre
end