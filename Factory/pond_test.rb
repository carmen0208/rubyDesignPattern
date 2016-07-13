require 'minitest/autorun'
require 'pp'

require_relative 'duck'
require_relative 'pond'

class PondTest < Minitest::Test
  def test_pond
    p = Pond.new(4)
    assert_equal Array, p.instance_variable_get(:@ducks).class
    assert_equal 4, p.instance_variable_get(:@ducks).size
    p.simulate_one_day
  end
end
