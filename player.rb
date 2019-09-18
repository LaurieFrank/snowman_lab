class Player

  attr_accessor :name, :lives

  def initialize(input_player_name, input_player_lives)
    @name = input_player_name
    @lives = input_player_lives
  end

  def remove_life()
    @lives -= 1
  end

end
