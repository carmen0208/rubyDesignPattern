
require 'minitest/autorun'
require 'pp'

require_relative 'duck'
require_relative 'frog'
require_relative 'factory_method'

class FactoryMethodPoneTest < Minitest::Test
  def test_duck_pond
    p = DuckPond.new(1)
    assert_equal Duck, p.instance_variable_get(:@animals)[0].class
    p.simulate_one_day
  end

  def test_frog_pond
    p = FrogPond.new(1)
    assert_equal Frog, p.instance_variable_get(:@animals)[0].class
    p.simulate_one_day
  end
end
