class Medium < ApplicationRecord
	has_and_belongs_to_many :tags
	accepts_nested_attributes_for :tags

	validates :url, uniqueness: true, :presence => {:message => "debe colocar la ubicacion del multimedia"}
	validates :nombre, presence: {message: "por favor colocar nombre del multimedia"}
	validates :tipo, presence: {message: "por favor llene tipo de multimedia"}
	validates :fecha, :presence => {:message => "debe colocar fecha de hoy"}
	validates :ancho, numericality: {message: "este campo debe ser numeros"}, allow_blank: true
	validates :alto, numericality: {message: "este campo debe ser numeros"}, allow_blank: true
	validates :size, numericality: {message: "este campo debe ser numeros"}, allow_blank: true
	validates :url, format: {with: /\.(png|jpg|gif|jpeg)\Z/i, :message => "debe seleccionar una imagen con formato jpg,png o gif "}, on: :gallery


	def tags_attributes=(tag_attributes)
		tag_attributes.values.each do |tag_attribute|
		 tag = Tag.find_or_create_by(tag_attribute)
		 self.tags << tag
		end
	end

	def self.search(search)
		where("nombre ILIKE ? OR tipo ILIKE ?", "%#{search}%", "%#{search}%")
	end
end
