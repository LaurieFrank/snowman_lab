require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../hidden_word.rb")
require_relative("../player.rb")

class TestGame < MiniTest::Test

  def setup()
    @player = Player.new("Laurike", 6)
    @hidden_word = HiddenWord.new("melting")
    @game = Game.new(@player.name, @hidden_word.word)

  end

  def test_player_name
    assert_equal("Laurike", @game.player)
  end

  def test_hidden_word_contents
    assert_equal("melting", @game.hidden_word)
  end

end
