class Prediction < ApplicationRecord
  belongs_to :calendar
  belongs_to :pool, inverse_of: :predictions
  has_many :goal_pools, :dependent => :destroy, inverse_of: :prediction

  accepts_nested_attributes_for :goal_pools#, reject_if: :all_bla#:new_record?
end
