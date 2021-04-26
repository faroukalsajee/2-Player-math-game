require './game'

begin
  puts "Hello and welcome to the game."

  puts "Type 'N' for New Game. \nType 'Q' to quit."

  if gets.chomp == 'N'
    puts "You have selected New Game. Have fun!"
    game = Game.new
  else
    puts "Goodbye see you!"
    exit
  end
  
rescue Exception => e
  puts " Goodbye see you!\n"
  exit
end