require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")



class BearTest < Minitest::Test

  def setup
    @Fallulah = Fish.new("Fallulah")
    @Felicity = Fish.new("Felicity")
    @Frida = Fish.new("Frida")
    @fishes = [@Fallulah, @Felicity, @Frida]
    @river = River.new("Amazon", @fishes)
    @bella = Bear.new("Bella")
    end

  def test_bear_has_name
    assert_equal("Bella", @bella.name)
  end

  def test_bear_has_stomach
    assert_equal([], @bella.stomach)
  end

  def test_bear_can_catch_a_fish
    @river.add_fish(@Fallulah)
    @river.add_fish(@Felicity)
    @river.add_fish(@Frida)
    @bella.catches(@Frida, @river)
    assert_equal(1, @bella.stomach.length)
    assert_equal(2, @river.fish_count)
  end

  def test_bear_can_roar
    assert_equal("Hello, hear me roar.", @bella.roar)
  end


## QUESTION we count stomach.length in test_bear_can_catch_a_fish
## is this different?
  def test_bear_can_count_fish
    @bella.catches(@Frida, @river)
    @bella.catches(@Felicity, @river)
    assert_equal(2, @bella.food_count)
  end


end
