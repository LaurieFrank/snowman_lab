class HiddenWord

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def split_word(word)
    word.split("")
  end
end
