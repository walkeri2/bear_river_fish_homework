class Bear

  attr_accessor :bear_name

  def initialize(bear_name)
    @bear_name = bear_name
    @bear_stomach = []
  end

  def stomach_count
    return @bear_stomach.count
  end

  def eats_fish(river)
    fish = river.river_population[0]
    @bear_stomach << fish
    river.pop()
  end

end
