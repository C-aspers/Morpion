require 'bundler'
Bundler.require
require 'colorize'
require_relative 'lib/board.rb'
require_relative 'lib/game.rb'
require 'pry'
#Nettoie le terminal
system 'clear'
#Dénomination du board et du game
board = Board.new("board")
my_game = Game.new("my_game")
#Début du jeu
puts "  *-* Tic Tac Toe *-*  ".green
sleep 1.75
system 'clear'
#Choix des noms des joueurs
puts "Hello, please enter the first player name ?".blue
print "> "
name_first_player = gets.chomp
puts "Welcome, #{name_first_player}!".blue
sleep 0.5
puts ""
puts "Now, please enter the second player name ?".magenta
print "> "
name_second_player = gets.chomp
puts "Welcome, #{name_second_player}!".magenta
sleep 1
player1 = "#{name_first_player}"
player2 = "#{name_second_player}"
count = 1
#Menu et lancement du jeu
system 'clear'
puts "Are you ready to start? Or do you want to take a look at the rules first?"
loop do
  puts "Press 1 to start or 2 to see the rules."
  print "> "
  rules_choice = gets.chomp
  if rules_choice == "1"
    sleep 0.65
    system "clear"
    puts ""
    puts "  *-* Round #{count} *-*".green
    sleep 1.5
    system 'clear'
    board.board_drawing(board)
    my_game.game_running(board, player1, player2)
    puts ""
    sleep 1
    puts "Do you want to play again?"
    print "y/n > "
    user_choice = gets.chomp
    if user_choice == "y"
      count += 1
      board.board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
      sleep 0.25
      system 'clear'
      puts "Let's start again than. Do you want to take a look at the rules before proceeding?"
      puts ""
    else 
      system 'clear'
      puts ""
      puts "Have a nice day!".green
      sleep 1
      abort 
    end
  else
    my_game.read_rules
  end
end


#binding.pry
