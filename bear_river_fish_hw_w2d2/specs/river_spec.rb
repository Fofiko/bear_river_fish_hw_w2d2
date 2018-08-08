require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
    @fishes = []
    @river = River.new("Amazon", @fishes)
    @Fallulah = Fish.new("Fallulah")
    @Felicity = Fish.new("Felicity")
    @Frida = Fish.new("Frida")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal([], @river.fishes)
  end

  def test_can_lose_fish
    @river.add_fish(@Fallulah)
    @river.add_fish(@Felicity)
    @river.add_fish(@Frida)
    @river.lose_fish(@Frida)
    assert_equal(2, @river.fish_count)
  end


## QUESTION this should be different from test_can_lose_fish, how?
  def test_river_has_fish_count
    @river.add_fish(@Fallulah)
    @river.add_fish(@Felicity)
    @river.add_fish(@Frida)
    # @river.lose_fish(@fish3)
    assert_equal(3, @river.fish_count)
  end


end
