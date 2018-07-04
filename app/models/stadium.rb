class Stadium
	include Mongoid::Document

	field   :ciudad
	field  	:capacidad
	field   :nombre
	field 	:created_at
	field 	:updated_at

	has_many :calendars, dependent: :destroy

  def to_s
    self.nombre
  end

  #------------- Validaciones para el nombre -------------#

  # Validacion para saber si el usuario no introdujo el nombre
  validates :nombre,
            presence: {message: "Debe colocar un nombre"}

  # Validacion para saber si el usuario introdujo un nombre alfanumerico
  validates :nombre,
            presence: {message: "Introduzca el nombre del estadio"},
            format: {with: /\A([A-Za-záÁéÉíÍóÓúÚñÑ\ ]+)\z/, message: "Caracteres invalidos"}


  #------------- Validaciones para la ciudad -------------#

  # Validacion para saber si el usuario no introdujo la ciudad
  validates :ciudad,
            presence: {message: "Debe colocar una ciudad"}

  # Validacion para saber si el usuario introdujo un nombre alfanumerico
  validates :ciudad,
            presence: {message: "Introduzca la ciudad"},
            format: {with: /\A([A-Za-záÁéÉíÍóÓúÚñÑ\ ]+)\z/, message: "Caracteres invalidos"}

  #------------- Validaciones para la ciudad -------------#

  # Validacion para saber si el usuario no introdujo la capacidad
  validates :capacidad,
            presence: {message: "Debe colocar una capacidad"}

  # Validacion para saber si el usuario introdujo una capacidad numerica

  validates :capacidad,
            presence: {message: "Introduzca la capacidad"},
            numericality: {only_interger: true, message: "La capacidad solo puede tener numeros"}

  scope :fase, -> (fase){
    Stadium
    .joins(:calendars).select('stadia.nombre as stadium, stadia.id as stadium_id')
    .where("calendars.fase = ?",fase)
    .distinct
    }
end

=begin
class Stadium < ApplicationRecord
	has_many :calendars, dependent: :destroy

  def to_s
    self.nombre
  end

  #------------- Validaciones para el nombre -------------#

  # Validacion para saber si el usuario no introdujo el nombre
  validates :nombre,
            presence: {message: "Debe colocar un nombre"}

  # Validacion para saber si el usuario introdujo un nombre alfanumerico
  validates :nombre,
            presence: {message: "Introduzca el nombre del estadio"},
            format: {with: /\A([A-Za-záÁéÉíÍóÓúÚñÑ\ ]+)\z/, message: "Caracteres invalidos"}


  #------------- Validaciones para la ciudad -------------#

  # Validacion para saber si el usuario no introdujo la ciudad
  validates :ciudad,
            presence: {message: "Debe colocar una ciudad"}

  # Validacion para saber si el usuario introdujo un nombre alfanumerico
  validates :ciudad,
            presence: {message: "Introduzca la ciudad"},
            format: {with: /\A([A-Za-záÁéÉíÍóÓúÚñÑ\ ]+)\z/, message: "Caracteres invalidos"}

  #------------- Validaciones para la ciudad -------------#

  # Validacion para saber si el usuario no introdujo la capacidad
  validates :capacidad,
            presence: {message: "Debe colocar una capacidad"}

  # Validacion para saber si el usuario introdujo una capacidad numerica

  validates :capacidad,
            presence: {message: "Introduzca la capacidad"},
            numericality: {only_interger: true, message: "La capacidad solo puede tener numeros"}

  scope :fase, -> (fase){
    Stadium
    .joins(:calendars).select('stadia.nombre as stadium, stadia.id as stadium_id')
    .where("calendars.fase = ?",fase)
    .distinct
    }
end
=end
