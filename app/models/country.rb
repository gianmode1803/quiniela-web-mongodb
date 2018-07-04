class Country
	include Mongoid::Document
	field :nombre
	field :escudo
	field :bandera
	field :apodo
	field :grupo
	field :campo

	#has_many :matches
  #has_many :goalpools
	#has_many :users
	has_many :players
	#has_many :coach_teams

	validates :nombre, :presence => {:message => "Por favor colocar nombre del pais"}

	validates :escudo,  :presence => {:message => "Por favor colocar escudo del pais"}

	validates :bandera, :presence => {:message => "Por favor colocar bandera del pais"}

	validates :grupo,  :presence => {:message => "Por favor colocar grupo correspondiente"},
	:length => {minimum: 1, maximum: 1, :message => "Grupo debe ser un solo caracter"},
	:format => {:with => /\A([A-H])\Z/, :message => "Grupo debe estar entre los valores A-H"}
end


=begin
class Country < ApplicationRecord

	has_many :matches
  has_many :goalpools
	has_many :users
	has_many :players
	has_many :coach_teams

	validates :nombre, :presence => {:message => "Por favor colocar nombre del pais"}

	validates :escudo,  :presence => {:message => "Por favor colocar escudo del pais"}

	validates :bandera, :presence => {:message => "Por favor colocar bandera del pais"}

	validates :grupo,  :presence => {:message => "Por favor colocar grupo correspondiente"},
	:length => {minimum: 1, maximum: 1, :message => "Grupo debe ser un solo caracter"},
	:format => {:with => /\A([A-H])\Z/, :message => "Grupo debe estar entre los valores A-H"}
end
=end
