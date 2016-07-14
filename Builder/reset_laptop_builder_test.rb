#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'computer'
require_relative 'polymorphic'
require_relative 'reset_laptop_builder'

class ResetBuilderTest < Minitest::Test
  def test_reset
    builder = LaptopBuilder.new
    builder.add_hard_disk(100000)
    builder.turbo
    computer1 = builder.computer

    assert_equal computer1.drives[0].type, :hard_disk
    assert_equal computer1.drives[0].size, 100000
    assert_equal computer1.motherboard.memory_size, 1000

    builder.reset
    builder.add_hard_disk(50000)
    builder.memory_size=500
    computer2 = builder.computer

    assert computer1 != computer2

    assert_equal computer2.drives[0].type, :hard_disk
    assert_equal computer2.drives[0].size, 50000
    assert_equal computer2.motherboard.memory_size, 500
  end
end
