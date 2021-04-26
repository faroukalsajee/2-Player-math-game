require './player'
require './turn'
require './question'

class Game
  @@game_id = 1
  
  attr_accessor :game_id, :player1, :player2, :turns
  
  def initialize
    @game_id = @@game_id
    @@game_id += 1
    
    puts "Player 1: please enter your name: "
    @player1 = Player.new(gets.chomp)
    
    puts "Player 2: please enter your name: "
    @player2 = Player.new(gets.chomp)
    
    puts "How many turns would you like to play for?"
    @turns = gets.chomp
    
    i = 0
    game_turns = @turns.to_i * 2
    
    while i < game_turns
      turn = Turn.new
      player = turn.current_player
      question = Question.new(player)
      
      if question.correct_answer == true and player == 1
        player1.update_score
      end
      
      if question.correct_answer == true and player == 2
        player2.update_score
      end
      
      turn.print_score(player1.score, player2.score, turn)
      
      if i == game_turns - 1
        turn.print_outcome(player1.score, player2.score)
      end
      
      i += 1
    end
    
  end
end