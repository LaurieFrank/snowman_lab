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
end
