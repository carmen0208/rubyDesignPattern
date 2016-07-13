
require 'minitest/autorun'
require 'pp'

require_relative 'duck'
require_relative 'frog'
require_relative 'plants'
require_relative 'factory_classes'

class FactoryMethodPoneTest < Minitest::Test
  def test_pond
    p = Pond.new(3, Frog, 4,Algae)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal Frog, p.instance_variable_get(:@animals)[0].class
    assert_equal 3, p.instance_variable_get(:@animals).size

    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal Algae, p.instance_variable_get(:@plants)[0].class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end

end
