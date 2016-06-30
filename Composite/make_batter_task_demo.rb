require_relative '../example'

require_relative 'make_batter_task'
require 'pp'

example %q{
  composite = CompositeTask.new('example')
  composite << MixTask.new

  pp composite

  puts composite[0].get_time_required
  composite[1] = AddDryIngredientsTask.new

  pp composite
}
