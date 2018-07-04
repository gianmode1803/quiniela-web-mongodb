class CoachTeam < ApplicationRecord
  belongs_to :country
  belongs_to :coach

	validates :debut, :presence => {:message => "Por favor colocar fecha de debut del entrenador con la seleccion"}

end
