require 'test_helper'

class GoalPoolTest < ActiveSupport::TestCase
  #def setup
  #  @pool = pools(:one)
  #end

  test "no guardar goal_pool sin goles" do
    goal_pool = GoalPool.new
    goal_pool.prediction_id = 980190962
    goal_pool.country_id = 980190962
    assert_not goal_pool.save, "Goal_Pool se guardo sin prediccion para goles"
  end

  test "La cantidad de goles deben ser enteros" do
    goal_pool = GoalPool.new
    goal_pool.prediction_id = 980190962
    goal_pool.country_id = 980190962
    goal_pool.cantidad = 5.5
    goal_pool.valid?
    assert_equal ["La cantidad de goles deben ser enteros"],goal_pool.errors[:cantidad]
  end

   #test "the truth" do
    # assert true

end
