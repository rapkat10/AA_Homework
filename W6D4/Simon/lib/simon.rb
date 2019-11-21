class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    if game_over
      game_over_message
      reset_game
    end
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message unless game_over
    @sequence_length += 1 unless game_over
  end

  def show_sequence
    add_random_color
    p @seq.shuffle
  end

  def require_sequence
    puts "pick the shown colors one at a time"
    input = gets.chomp
    if seq[0] != input
      game_over = true
      game_over_message
      play
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Congratualtions"
  end

  def game_over_message
    puts "Game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

game = Simon.new
# game.play
