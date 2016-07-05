#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'button_with_cmd'

class MockCommand
  attr_reader :executed

  def initialize
    @executed = false
  end

  def execute
    @executed = true
  end
end

class ButtonWithCommandTest < Minitest::Test
  def test_button
    cmd = MockCommand.new
    sb = SlickButton.new(cmd)
    assert(!cmd.executed)
    sb.on_button_push
    assert cmd.executed
  end
end
