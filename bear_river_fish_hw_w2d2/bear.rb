class Bear

  attr_reader :name, :stomach


  def initialize(name)
    @name = name
    @stomach = []
  end

  def catches(fish, river)
    @stomach  << fish
    @river.fishes.remove_fish(fish)
  end





end
