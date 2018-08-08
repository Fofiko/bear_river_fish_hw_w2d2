require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")



class BearTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Fallulah")
    @fish2 = Fish.new("Felicity")
    @fish3 = Fish.new("Frida")
    @fishes = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @fishes)
    @bear = Bear.new("Bella")
    end

  def test_bear_has_name
    assert_equal("Bella", @bear.name)
  end

  def test_bear_has_stomach
    assert_equal([], @bear.stomach)
  end

  def test_bear_can_catch_a_fish
    @bear.catches(@Frida, @river)
    assert_equal(1, @bear.stomach.length)
    assert_equal(2, @river.fishes.count)
  end




end
