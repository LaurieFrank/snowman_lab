require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")

class TestHiddenWord < MiniTest::Test

  def setup()
    @hidden_word = HiddenWord.new("melting")
  end

  def test_hidden_word_contents()
    assert_equal("melting", @hidden_word.word)
  end

  def test_will_split_word()
    assert_equal(["m", "e", "l", "t", "i", "n", "g"], @hidden_word.split_word(@hidden_word.word))
  end

  def test_is_letter_in_word()
    @hidden_word.split_word(@hidden_word.word)
    result = @hidden_word.does_word_include_letter("m")
    assert_equal(true, result)
  end

  def test_display_true_characters()
    split_word = @hidden_word.split_word(@hidden_word.word)
    # guess_result = @hidden_word.does_word_include_letter("m")
    actual_result = @hidden_word.display_true_characters(guess_result)
    assert_equal("m******", actual_result)
  end

end


#gsub
