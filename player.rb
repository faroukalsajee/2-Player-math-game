class Player
  @@player_id = 1

  attr_accessor :score
  attr_reader :name, :player_id

  def initialize(name)
    @player_id = @@player_id
    @name = name
    @score = 0
    @@player_id += 1
    puts "Welcome #{@name}, you are Player #{@player_id}."
  end

  def update_score
    @score += 1
  end

end