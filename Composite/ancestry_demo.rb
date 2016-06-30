#!/usr/bin/env ruby

require_relative '../example'

#
# Simple demo of walking the ancestry tree
#

require_relative 'task'
#
# Task / Composite with parent pointers
#
require_relative 'composite_task'
example %q{


c1 = CompositeTask.new('grandpa')
c2 = CompositeTask.new('dad')
c3 = CompositeTask.new('dad')

c1.add_sub_task(c2)
c2.add_sub_task(c3)

task = c3
while task          # while the task is not null
  puts "task: #{task}"
  task = task.parent
end
}
