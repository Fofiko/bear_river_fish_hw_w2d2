require("minitest/autorun")
require("minitest/rg")
# require_relative("../bear")
require_relative("../river")
# require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
    @river1 = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon", @river1.name)
  end


end
