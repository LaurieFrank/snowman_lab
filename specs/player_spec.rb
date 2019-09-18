require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new("Laurike", 6)
  end

  def test_name
    assert_equal("Laurike", @player.name)
  end

  def test_player_lives
    assert_equal(6, @player.lives)
  end

  def test_reduce_lives
    @player.remove_life()
    assert_equal(5, @player.lives)
  end
end
