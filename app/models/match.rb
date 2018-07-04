class Match < ApplicationRecord
  belongs_to :calendar
  belongs_to :country
  has_many :events

#Dado el id del calendario,
#devuelve las banderas de los paises asociados al calendario
  scope :matches_of, -> (id){
    Match
    .joins(:country)
    .select('countries.bandera')
    .where("matches.calendar_id = ?",id)
  }
#Verifica si el partido existe
  scope :exist, -> (id){
    Match
    .select('matches.id')
    .where("matches.calendar_id= ?",id)
  }

end
