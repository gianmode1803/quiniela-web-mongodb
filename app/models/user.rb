class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :cedula, uniqueness: true, presence: true, numericality: {greater_than:0, only_integer: true }
  validates :nombre,:country_id, :apellido, presence: true
  validates :postal,:telefono, presence: true, numericality: {greater_than:0, only_integer: true }
  validates_length_of :cedula, minimum:6
  validates_length_of :telefono, minimum:11
  validates_length_of :postal, minimum:4
  validates_format_of :nombre, :apellido, :with => /\A[A-ZÁ-ÚÑa-zá-úñ ]+\z/ #Todas las validaciones del usuario

  belongs_to :country
  has_many :pools

  scope :published, -> { where(published: true) }
  scope :ordenado_por_nombre, -> {Category.select('nombre', 'id').all.order("nombre asc")}

  scope :pools_of, -> (user){User.joins(:pools).select('users.nombre,pools.puntos as puntos ,pools.tipo as tipo').where('users.id = ?',user) }


#Devuelve la imagen del pais y cuenta las veces que se repite el pais en User
scope :tabla_preferencia, -> {
  User
  .joins(:country).
  select('countries.bandera').
  group('countries.bandera').
  order('count_countries_bandera DESC').count
}

#Devuelve el numero total de usuarios
scope :total, -> {
  User.count
}

end
