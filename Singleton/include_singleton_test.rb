#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'manual_singleton'

class StandardSingletonTest < Minitest::Test

  def test_singleton
    logger1 = SimpleLogger.instance
    logger2 = SimpleLogger.instance
    assert_equal logger1, logger2
    assert_equal SimpleLogger, logger1.class
  end

end
