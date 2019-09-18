class HiddenWord

  attr_accessor :word

  def initialize(word)
    @word = word
    @word_array = []
    @guesses
  end

  def split_word()
    split_word = @word.split("")
    @word_array = split_word
    p @word_array
    return @word_array
  end

  def does_word_include_letter(guess)
    p @word_array
    for letter in @word_array
      if letter.include?(guess)
        return true
      end
    end
  end

  def display_true_characters(guess_result)
    # @word_array.does_word_include_letter(guess_result)
    # for letter in @word_array
    #   if guess_result == true
    #     return guess_result
    # #   end
    # end
    #   else
    #     letter == "*"
    return @word_array.tr("^ ", "*") if @word.include?(guess_result) == false

  end

end


# potential way to solve problem
# just store hidden word
# also store an array of every guess so far
# every time you must display word:
#    loop through words letters as array (.split)
#    if letter is included in array of guessed letters, add letter to new 'shown_word' array
#    else add * to new 'shown_word' array
# return shown_word array
