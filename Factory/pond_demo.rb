require_relative "../example"
require_relative 'duck'
require_relative 'pond'

example %q{
pond = Pond.new(3)
pond.simulate_one_day
}
