class Player
  include Mongoid::Document

	field :nombre
	field :apellido
	field :apodo
	field :fecha_nacimiento
	field :posicion
	field :dorsal
	field :participaciones
	field :goles
	field :ciudad_nacimiento
	field :debut
	field :foto
	field :created_at
	field :updated_at

	belongs_to :country

	#Apodo no se valida si esta vacio o no
	#Foto no se valida si esta vacio o no (POR AHORA)

	validates :nombre,  :presence => {:message => "Por favor colocar nombre del jugador"}

	validates :fecha_nacimiento, :presence => {:message => "Por favor colocar fecha de nacimiento del jugador"}

	validates :posicion, :presence => {:message => "Por favor colocar posicion del jugador"}
	validates :dorsal, :presence => {:message => "Por favor colocar dorsal del jugador"},
	 numericality: {greater_than:0, only_integer: true, :message => "El dorsal del jugador debe ser positivo" }

	validates :participaciones, :presence => {:message => "Por favor colocar el numero de participaciones del jugador"},
	numericality: {message: "Las participaciones deben ser numericas"}

	validates :goles,  :presence => {:message => "Por favor colocar el numero de goles anotados por el jugador"},
	numericality: {message: "Los goles anotados deben ser numéricos"}

	#validates :country_id, :presence => {:message => "Por favor colocar pais del jugador"}


end
