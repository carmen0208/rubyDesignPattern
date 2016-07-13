#!/usr/bin/env ruby
require 'minitest/autorun'
require 'pp'

require_relative 'duck'
require_relative 'frog'

require_relative 'plants'
require_relative 'tiger_tree'
require_relative 'abs_fac_with_classes'


class ClassBasedOrganismFactoryTest < Minitest::Test

  def test_pond_habitat
    f = OrganismFactory.new(Tree, Frog)
    assert_equal Frog, f.new_animal('').class
    assert_equal Tree, f.new_plant('').class
  end

end
