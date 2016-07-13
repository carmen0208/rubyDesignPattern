require_relative '../example'
require_relative 'duck'
require_relative 'frog'

require_relative 'plants'
require_relative 'tiger_tree'
require_relative 'habitat'
require_relative 'abs_fac_with_classes'

example %q{
  jungle_organism_factory = OrganismFactory.new(Tree, Tiger)
  pond_organism_factory = OrganismFactory.new(WaterLily, Frog)

  jungle = Habitat.new(1, 4, jungle_organism_factory)
  jungle.simulate_one_day

  pond = Habitat.new( 2, 4, pond_organism_factory)
  pond.simulate_one_day
}
