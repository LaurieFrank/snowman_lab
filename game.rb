class Game

  attr_accessor :player, :hidden_word

  def initialize(input_player, input_hidden_word)
    @player = input_player
    @hidden_word = input_hidden_word
    @guessed_letters = []
  end

end
