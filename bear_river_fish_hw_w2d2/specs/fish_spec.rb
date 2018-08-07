require("minitest/autorun")
require("minitest/rg")
# require_relative("../bear")
# require_relative("../river")
require_relative("../fish")

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Fallulah")
    @fish2 = Fish.new("Felicity")
    @fish3 = Fish.new("Frida")
  end


  def test_fish_has_name
    assert_equal("Fallulah", @fish1.name)
    assert_equal("Felicity", @fish2.name)
    assert_equal("Frida", @fish3.name)
  end








end
