require_relative '../example'
require_relative 'duck'
require_relative 'frog'
require_relative 'plants'
require_relative 'factory_classes'

example %q{
pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day
}
