#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'block_button'

class ButtonWithBlockTest < Minitest::Test


  def test_button
    called = false
    sb = SlickButton.new { called = true }
    assert(!called)
    sb.on_button_push
    assert(called)
  end

end
