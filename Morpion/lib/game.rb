class Game
  attr_accessor :name, :pawn_symbol
  def initialize(my_game)
    @name = name
    @pawn_symbol = pawn_symbol
  end
  #Méthode qui gère le jeu
  def game_running(board, player1, player2)
    pos_already_taken = []
    loop do
      system 'clear'    
        @pawn_symbol = "X"
        board.board_drawing(board)
        puts "It's #{player1}'s' turn. Where do you want to play?".blue
        board_array(pawn_symbol, board, pos_already_taken)   
        if board.board[0] == " #{@pawn_symbol} " && board.board[1] == " #{@pawn_symbol} " && board.board[2] == " #{@pawn_symbol} " || board.board[3] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[5] == " #{@pawn_symbol} " || board.board[6] == " #{@pawn_symbol} " && board.board[7] == " #{@pawn_symbol} " && board.board[8] == " #{@pawn_symbol} " || board.board[0] == " #{@pawn_symbol} " && board.board[3] == " #{@pawn_symbol} " && board.board[6] == " #{@pawn_symbol} " || board.board[1] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[7] == " #{@pawn_symbol} " || board.board[2] == " #{@pawn_symbol} " && board.board[5] == " #{@pawn_symbol} " && board.board[8] == " #{@pawn_symbol} " || board.board[0] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[8] == " #{@pawn_symbol} " || board.board[2] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[6] == " #{@pawn_symbol} "
          system 'clear'
          board.board_drawing(board)
          sleep 0.5
          puts  "Yeah!!! #{player1} you won !".blue  
         break
        end
        if pos_already_taken.length != 9 
          system 'clear'
          @pawn_symbol = "O"
          board.board_drawing(board)
          puts "It's #{player2}'s' turn. Where do you want to play?".magenta 
          board_array(pawn_symbol, board, pos_already_taken)         
          if board.board[0] == " #{@pawn_symbol} " && board.board[1] == " #{@pawn_symbol} " && board.board[2] == " #{@pawn_symbol} " || board.board[3] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[5] == " #{@pawn_symbol} " || board.board[6] == " #{@pawn_symbol} " && board.board[7] == " #{@pawn_symbol} " && board.board[8] == " #{@pawn_symbol} " || board.board[0] == " #{@pawn_symbol} " && board.board[3] == " #{@pawn_symbol} " && board.board[6] == " #{@pawn_symbol} " || board.board[1] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[7] == " #{@pawn_symbol} " || board.board[2] == " #{@pawn_symbol} " && board.board[5] == " #{@pawn_symbol} " && board.board[8] == " #{@pawn_symbol} " || board.board[0] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[8] == " #{@pawn_symbol} " || board.board[2] == " #{@pawn_symbol} " && board.board[4] == " #{@pawn_symbol} " && board.board[6] == " #{@pawn_symbol} "
            system 'clear'
            board.board_drawing(board)
            sleep 0.5
            puts  "Yeah!!! #{player2} you won !".magenta  
           break
          end
        else
          puts "The game is over. No one wins.".yellow
        break
        end 
    end
  end
  #Méthode qui gère les choix des joueurs pendant la partie
  def board_array(pawn_symbol, board, pos_already_taken)
    loop do
      print "> "
      user_input = gets.chomp.to_i - 1
      if user_input >= 0 && user_input < 9 
        if pos_already_taken.include? (user_input)
          puts "Position already taken.".red
        else 
          pos_already_taken << user_input  
          board.board[user_input] = " #{@pawn_symbol} "   
          break
        end  
      else
        puts "Please insert a number between 1 and 9.".red
      end
    end
  end   
  #Méthode pour les règles
  def read_rules
    system 'clear'
    puts "Règle du jeu".yellow
    puts  ""
    puts "Le Morpion se joue sur une grille carrée de 3x3 cases.".yellow
    puts "Deux joueurs s'affrontent.".yellow
    puts "Ils doivent remplir chacun à leur tour une case de la grille avec le symbole qui leur est attribué : O ou X.".yellow
    puts "Le gagnant est celui qui arrive à aligner trois symboles identiques, horizontalement, verticalement ou en diagonale.".yellow
    puts ""
  end
end


