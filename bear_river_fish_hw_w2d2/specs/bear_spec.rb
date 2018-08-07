require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")



class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Bella")
  end

  def test_bear_has_name
    assert_equal("Bella", @bear.name)
  end

  def test_bear_has_stomach
    assert_equal([], @bear.stomach)
  end







end
