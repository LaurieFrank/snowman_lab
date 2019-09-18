require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")

class TestHiddenWord < MiniTest::Test

  def setup()
    @hidden_word = HiddenWord.new("melting")
  end

  def test_hidden_word_contents
    assert_equal("melting", @hidden_word.word)
  end

  def test_will_split_word
    assert_equal(["m", "e", "l", "t", "i", "n", "g"], @hidden_word.split_word(@hidden_word.word))
  end
end
