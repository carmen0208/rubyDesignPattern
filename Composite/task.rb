class Task
  attr_accessor :name, :parent
  def initialize(name)
    @name = name
    @parent = nil
  end

  def get_time_required
    0.0
  end
end

class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    1.0
  end
end

class MixTask < Task
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    3.0
  end
end

class AddLiquidsTask < Task
  def initialize
    super('Add Liquids')
  end

  def get_time_required
    4.0
  end
end
