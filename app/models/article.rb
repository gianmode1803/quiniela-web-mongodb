class Article < ApplicationRecord

	validates :titulo,  presence: true
	validates :cuerpo,  presence: true
	validates :fecha,  presence: true
	validates :autor,  presence: true
	validates :destacado,  presence: true

	def self.search(search)
  where("titulo ILIKE ? OR autor ILIKE ?", "%#{search}%", "%#{search}%")
end
end
