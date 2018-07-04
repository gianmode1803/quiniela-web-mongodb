class Pool < ApplicationRecord
  belongs_to :user
  has_many :predictions, :dependent => :destroy, inverse_of: :pool
  has_many :calendars, through: :predictions

  accepts_nested_attributes_for :predictions#, reject_if: :new_record?

  validates_presence_of :puntos, :tipo, :user_id
  validates :tipo, inclusion: { in: %w(cuartos octavos completa), message: "El tipo quiniela no es valido" }
  validates :puntos, numericality: { only_integer: true , message:"Los puntos de la quiniela deben ser enteros"}

  #validates_associated :Predictions
  #validates_associated :Calendars
  #validates :puntos, presence: true
  #=> {:message => "Falta el nombre"}

  #joins
  #User.select("users.nombre,pools.puntos,pools.tipo").joins("JOIN pools ON pools.user_id = users.id")
  #User.select("users.nombre,pools.puntos,pools.tipo").joins(:pools)
  #Article.joins(:category, :comments)

#contar quinielas por usuario
  scope :pools_of, -> (user){
    Pool
    .where("user_id = ?", user)
    .count("pools.user_id")
  }

end
