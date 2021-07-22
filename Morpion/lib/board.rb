class Board
  attr_accessor :board
  def initialize(board)
    @board = board
    @board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
  end
#Crée le plateau
  def board_drawing(board)
    puts ""
    puts "     A     B     C".yellow
    puts ""
    print " 1".yellow
    print"  #{@board[0]}"
    print " | ".cyan
    print "#{@board[1]}"
    print " | ".cyan
    puts "#{@board[2]}  "
    puts "   _____|_____|_____ ".cyan
    puts "        |     |      ".cyan
    print " 2".yellow
    print"  #{@board[3]}"
    print " | ".cyan
    print "#{@board[4]}"
    print " | ".cyan
    puts "#{@board[5]}  "
    puts "   _____|_____|_____ ".cyan
    puts "        |     |      ".cyan
    print " 3".yellow
    print"  #{@board[6]}"
    print " | ".cyan
    print "#{@board[7]}"
    print " | ".cyan
    puts "#{@board[8]}  "
    puts ""
    puts ""
    puts "   Equivalence numpad".light_yellow
    puts "         1|2|3".light_yellow
    puts "         4|5|6".light_yellow
    puts "         7|8|9".light_yellow
    puts ""
   
  end
end

