#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'computer'
require_relative 'computer_builder'
require_relative 'saner_computer_builder'


class SanerBuilderTest < Minitest::Test

  def test_hard_disk_check
    builder = ComputerBuilder.new
    computer = builder.computer
    assert_equal 1, computer.drives.size
    assert_equal :hard_disk, computer.drives[0].type
  end


end
