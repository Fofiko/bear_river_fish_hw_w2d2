class River

  attr_reader :name, :fishes


  def initialize(name, fishes)
    @name = name
    @fishes = []
  end

  def fish_count
    return @fishes.length()
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def lose_fish(fish)
    @fishes.delete(fish)
  end



end
