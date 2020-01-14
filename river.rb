class River

  attr_accessor :river_name, :river_population

  def initialize(river_name)
    @river_name = river_name
    @river_population = []
  end

  def river_count
    return @river_population.count
  end

  def add_fish(fish)
    @river_population << fish
  end

end
