# require 'task'

require File.expand_path(File.dirname(__FILE__) + '/composite_task')

class MakeBatterTask < CompositeTask
  def initialize
    super('Make Batter')
    add_sub_task( AddDryIngredientsTask.new )
    add_sub_task( AddLiquidsTask.new )
    add_sub_task( MixTask.new )
  end
end
