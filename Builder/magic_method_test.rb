#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'computer'
require_relative 'computer_builder'
require_relative 'magic_method'

class MagicMethodTest < Minitest::Test
  def test_mm
    builder = ComputerBuilder.new
    builder.add_turbo_and_dvd_and_cd_and_harddisk
    computer = builder.computer
# 
# puts computer.drives[0].type
# puts computer.drives[1].type
# puts computer.drives[2].type
# puts computer.drives[3].type
# puts computer.drives[4].type
# puts computer.drives[5].type
# puts computer.drives[6].type
    assert_equal computer.drives[0].type, :dvd
    assert_equal computer.drives[1].type, :cd
    assert_equal computer.drives[2].type, :hard_disk
    assert_equal computer.drives[2].size, 100000
    assert_equal computer.motherboard.cpu.class, TurboCPU

  end
end
