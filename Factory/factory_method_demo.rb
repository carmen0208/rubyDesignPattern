require_relative '../example'
require_relative 'duck'
require_relative 'frog'
require_relative 'factory_method'

example %q{
pond = FrogPond.new(3)
pond.simulate_one_day
}
