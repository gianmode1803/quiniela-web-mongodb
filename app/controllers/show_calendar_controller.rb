class ShowCalendarController < ApplicationController
  def fase_grupos
    #arreglo de los partidos asociados a la Fase de grupos
    @partidos = Calendar.calendar_of('Fase de grupos')
  end

  def octavos
    #arreglo de los partidos asociados a los Octavos de final
    @partidos = Calendar.calendar_of('Octavos de final')

  end

  def cuartos
    #arreglo de los partidos asociados a los Cuartos de final
    @partidos = Calendar.calendar_of('Cuartos de final')
  end

  def semifinal
    #arreglo de los partidos asociados a las Semifinales
    @partidos = Calendar.calendar_of('Semifinales')
  end

  def tercer_puesto
    #arreglo de los partidos asociados a al Tercer puesto
    @partidos = Calendar.calendar_of('Tercer puesto')
  end

  def final
    #arreglo de los partidos asociados a la Final
    @partidos = Calendar.calendar_of('Final')
  end
end
