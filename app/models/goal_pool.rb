class GoalPool < ApplicationRecord
  belongs_to :prediction, inverse_of: :goal_pools
  belongs_to :country

  validates_presence_of :prediction
  #validates_presence_of :cantidad, :prediction_id, :country_id
  validates :cantidad, presence: true
  #validates :prediction_id, presence: true
  validates_presence_of :cantidad, :prediction_id, :country_id
  validates :cantidad, numericality: { only_integer: true , message:"La cantidad de goles deben ser enteros"}

end
