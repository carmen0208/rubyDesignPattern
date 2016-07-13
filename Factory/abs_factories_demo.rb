require_relative '../example'
require_relative 'duck'
require_relative 'frog'

require_relative 'plants'
require_relative 'tiger_tree'
require_relative 'abs_factories'
require_relative 'habitat'

example %q{
  jungle = Habitat.new(1, 4, JungleOrganismFactory.new)
  jungle.simulate_one_day

  pond = Habitat.new( 2, 4, PondOrganismFactory.new)
  pond.simulate_one_day
}
