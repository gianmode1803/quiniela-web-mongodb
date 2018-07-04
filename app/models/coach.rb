class Coach < ApplicationRecord
	has_many :coach_teams
	

	validates :nombre, :presence => {:message => "Por favor colocar nombre del entrenador"}

	validates :apellido, :presence => {:message => "Por favor colocar apellido del entrenador"}
	#[^x-y]
	validates :ciudad_nacimiento, :presence => {:message => "Por favor colocar ciudad de nacimiento del entrenador"}

	validates :fecha_nacimiento, :presence => {:message => "Por favor colocar fecha de nacimiento del entrenador"}
end
