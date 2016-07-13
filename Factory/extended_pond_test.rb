
require 'minitest/autorun'
require 'pp'

require_relative 'duck'
require_relative 'frog'
require_relative 'plants'
require_relative 'extended_pond'

class FactoryMethodPoneTest < Minitest::Test
  def test_duck_lily_pond
    p = DuckWaterLilyPond.new(3, 4)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal 3, p.instance_variable_get(:@animals).size
    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end

  def test_frog_algea_pond
    p = FrogAlgaePond.new(3, 4)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal 3, p.instance_variable_get(:@animals).size
    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end
end
