#!/usr/bin/env ruby

require 'minitest/autorun'
require 'pp'

require_relative 'task'
require_relative 'composite_task'
require_relative 'make_batter_task'
require_relative 'make_cake_task'

class MakeCakeTest < Minitest::Test

  def setup
    @cake_task = MakeCakeTask.new
  end

  def test_time_required
    assert_equal 114, @cake_task.get_time_required
  end

  def test_size
    class << @cake_task
      def size
        @sub_tasks.size
      end
    end
    assert_equal 5, @cake_task.size
  end

end
