require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")



class BearTest < Minitest::Test

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end









end
