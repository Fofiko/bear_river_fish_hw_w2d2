require("minitest/autorun")
require("minitest/rg")
# require_relative("../bear")
require_relative("../river")
# require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
    @fishes = []
    @river1 = River.new("Amazon", @fishes)
  end

  def test_river_has_name
    assert_equal("Amazon", @river1.name)
  end

  def test_river_has_fish
    assert_equal([], @river1.fishes)
  end



end
