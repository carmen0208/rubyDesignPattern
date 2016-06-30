#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'composite_task'
require_relative 'make_batter_task'

class MakeBatterTaskTest < Minitest::Test
  def test_add_delete
    task = MakeBatterTask.new
    assert_equal 8, task.get_time_required
  end
end
