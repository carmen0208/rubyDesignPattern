
require 'minitest/autorun'
require 'pp'

require_relative 'duck'
require_relative 'frog'

require_relative 'plants'
require_relative 'tiger_tree'
require_relative 'abs_factories'
require_relative 'habitat'

class FactoryMethodPoneTest < Minitest::Test
  def test_pond_habitat
    pf = PondOrganismFactory.new
    h = Habitat.new( 1, 1, pf)
    assert_equal Frog, h.instance_variable_get(:@animals)[0].class
    assert_equal Algae, h.instance_variable_get(:@plants)[0].class
    h.simulate_one_day
  end

  def test_jungle_habitat
    jf = JungleOrganismFactory.new
    h = Habitat.new( 1, 1, jf)
    assert_equal Tiger, h.instance_variable_get(:@animals)[0].class
    assert_equal Tree, h.instance_variable_get(:@plants)[0].class
    h.simulate_one_day
  end

end
