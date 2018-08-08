require("minitest/autorun")
require("minitest/rg")
# require_relative("../bear")
# require_relative("../river")
require_relative("../fish")

class FishTest < Minitest::Test

  def setup
    @Fallulah = Fish.new("Fallulah")
    @Felicity = Fish.new("Felicity")
    @Frida = Fish.new("Frida")
  end


  def test_fish_has_name
    assert_equal("Fallulah", @Fallulah.name)
    assert_equal("Felicity", @Felicity.name)
    assert_equal("Frida", @Frida.name)
  end








end
