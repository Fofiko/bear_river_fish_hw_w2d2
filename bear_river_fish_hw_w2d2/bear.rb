class Bear

  attr_reader :name, :stomach


  def initialize(name)
    @name = name
    @stomach = []
  end

  def catches(fish, river)
    @stomach  << fish
    river.lose_fish(fish)
  end

  def roar
    return "Hello, hear me roar."
  end



end
