# require 'task'

require File.expand_path(File.dirname(__FILE__) + '/task')

class CompositeTask < Task

  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each {|task| time += task.get_time_required }
    time
  end

  # Right way to do it ...

  def total_number_basic_tasks
    total = 0
    @sub_tasks.each {|task| total += task.total_number_basic_tasks}
    total
  end
  # Lots of code omitted ...
  #Wrong way to add it because the tree is not only has one hierarchy

# def total_number_basic_tasks
#   return @sub_tasks.length
# end
end
