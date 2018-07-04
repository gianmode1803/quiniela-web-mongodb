class Calendar
  include Mongoid::Document

  field   :fase
  field   :fecha, type: Date
  field   :hora, type: Time
  field   :stadium_id
  field   :created_at
  field   :updated_at

  belongs_to :stadium
  #has_many :predictions
  #has_many :pools, through: :predictions
  #has_many :matches, dependent: :destroy

  scope :countries_of, -> (fase,fecha,grupo){
    Calendar
    .joins(matches: :country).select('calendars.id,calendars.stadium_id,fecha,hora,countries.nombre as country')
    .where("calendars.fase = ?",fase)
    .where("calendars.fecha = ?",fecha)
    .where("countries.grupo = ?",grupo)
    .order("calendars.id ASC")
  }
  scope :between, -> (date1,date2) {
    Calendar
    .where(fecha: date1..date2)
  }
  scope :countries, -> (fase){
    Calendar
    .joins(:stadium,{matches: :country}).select('countries.id as country_id, stadia.nombre as stadium,calendars.id,calendars.stadium_id,fecha,hora,countries.bandera as country,countries.grupo as grupo')
    .where("calendars.fase = ?",fase)
    .order("grupo,fecha,hora")
  }

#Dado una fase, devuelve el id de todos los partidos de la fase
  scope :calendar_of, -> (fase){
    Calendar
    .select('id')
    .where("fase = ?",fase)
    .order("fecha, hora, id ASC")
  }

  scope :dates_of, -> (fase){
    Calendar.select(:fecha, :id).where("fase= ?",fase).order(:fecha)
  }
end

=begin
class Calendar < ApplicationRecord
  belongs_to :stadium
  has_many :predictions
  has_many :pools, through: :predictions
  has_many :matches, dependent: :destroy

  scope :countries_of, -> (fase,fecha,grupo){
    Calendar
    .joins(matches: :country).select('calendars.id,calendars.stadium_id,fecha,hora,countries.nombre as country')
    .where("calendars.fase = ?",fase)
    .where("calendars.fecha = ?",fecha)
    .where("countries.grupo = ?",grupo)
    .order("calendars.id ASC")
  }
  scope :between, -> (date1,date2) {
    Calendar
    .where(fecha: date1..date2)
  }
  scope :countries, -> (fase){
    Calendar
    .joins(:stadium,{matches: :country}).select('countries.id as country_id, stadia.nombre as stadium,calendars.id,calendars.stadium_id,fecha,hora,countries.bandera as country,countries.grupo as grupo')
    .where("calendars.fase = ?",fase)
    .order("grupo,fecha,hora")
  }

#Dado una fase, devuelve el id de todos los partidos de la fase
  scope :calendar_of, -> (fase){
    Calendar
    .select('id')
    .where("fase = ?",fase)
    .order("fecha, hora, id ASC")
  }

  scope :dates_of, -> (fase){
    Calendar.select(:fecha, :id).where("fase= ?",fase).order(:fecha)
  }
end
=end
