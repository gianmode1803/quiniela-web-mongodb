class Event < ApplicationRecord

  belongs_to :player
  belongs_to :match

#Cuenta los goles que se marcaron en un partido
  scope :result, -> (id){
    Event
    .joins(:match)
    .where("events.match_id = ?",id)
    .where("events.gol = 'true'").count
  }

#Verific si el partido ya comenzo
  scope :init, -> (id){
    Event
    .select('match_id')
    .where("events.match_id = ?",id)
  }

end
