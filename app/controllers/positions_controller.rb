class PositionsController < ApplicationController
  def index
  	@goles_por_equipo_por_partido = Player.find_by_sql("SELECT Calendars.id as Calendario, Countries.id, Countries.nombre as Pais, COUNT(Events.id) as goles
										FROM Players, Events , Countries, Matches, Calendars
										WHERE Matches.country_id = Countries.id and Calendars.id = Matches.calendar_id and Matches.id = Events.match_id and
										Events.player_id= Players.id and Players.country_id = Countries.id
										and Events.match_id = Matches.id and Events.gol =true and Events.tipo = 'gol'
										GROUP BY Calendars.id, Countries.id
										ORDER BY Calendars.id, Calendars.id")
  	
  	@total_goles_por_partido = Player.find_by_sql("SELECT Tabla.calendario, SUM(goles) FROM
										(SELECT Calendars.id as Calendario, Countries.nombre as Pais, COUNT(Events.id) as goles
										FROM Players, Events , Countries, Matches, Calendars
										WHERE Matches.country_id = Countries.id and Calendars.id = Matches.calendar_id and Matches.id = Events.match_id and
										Events.player_id= Players.id and Players.country_id = Countries.id
										and Events.match_id = Matches.id
										GROUP BY Calendars.id, Countries.id
										ORDER BY Calendars.id) as Tabla
										GROUP BY Tabla.calendario")

  	@total_goles_por_equipo = Player.find_by_sql("SELECT COUNT(Countries.id) as goles, Countries.id, Countries.nombre  
										FROM Players, Events , Countries
										WHERE Events.gol = true and Events.tipo = 'gol' and Events.player_id= Players.id and Players.country_id = Countries.id
										GROUP BY Countries.id
										")


  end
end
