#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'make_batter_task'

class MakeBatterTaskTest < Minitest::Test
  def test_make_batter
   t = MakeBatterTask.new
   assert_equal t.name, 'Make Batter'
   subtasks =  t.instance_variable_get(:@sub_tasks).clone
   assert_equal 3, subtasks.size
   assert_equal 8, t.get_time_required
   t.remove_sub_task subtasks[0]
   t.remove_sub_task subtasks[1]
   t.remove_sub_task subtasks[2]
   assert_equal 0, t.get_time_required
  end
end
