class Turn
  attr_reader :current_player, :print_score, :player_turn, :current_turn

  @@player_turn = 0
  @@current_turn = 1

  def initialize
    @current_player = @@player_turn % 2 + 1
    puts "----- TURN #{@@current_turn} -----"
    puts "Current Player: Player #{@current_player}"
    @@player_turn += 1
  end
  
  def print_score(p1score, p2score, turn)
    puts "P1: #{p1score}/#{@@current_turn} vs P2: #{p2score}/#{@@current_turn}\n\n"
    if @@player_turn % 2 == 0
      @@current_turn += 1
    end
  end

  def print_outcome(p1score, p2score)
    puts "----- GAME OVER -----"
    if p1score > p2score
      puts "Player 1 wins with a score of #{p1score}/#{@@current_turn - 1}!"
    elsif p1score < p2score
      puts "Player 2 wins with a score of #{p2score}/#{@@current_turn - 1}!"
    else
      puts "The game is tied with scores of P1: #{p1score}/#{@@current_turn - 1} vs P2: #{p2score}/#{@@current_turn - 1}!"
    end
    puts "\n"
  end

end