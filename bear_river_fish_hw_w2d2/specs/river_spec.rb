require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
    @fishes = []
    @river = River.new("Amazon", @fishes)
    @fish1 = Fish.new("Fallulah")
    @fish2 = Fish.new("Felicity")
    @fish3 = Fish.new("Frida")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal([], @river.fishes)
  end

  def test_can_lose_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.lose_fish(@fish3)
    assert_equal(2, @river.fish_count)
  end


end
