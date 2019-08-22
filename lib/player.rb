

class Player
  attr_reader :moves, :name
  def initialize(name)
    @moves = 0
    @name = name
  end
  def move(board)


    
     puts "Player's #{@name} move: "
     move1 = gets.chomp.to_i
     while board[move1 - 1] != move1
       puts "That position is taken!"
       puts "Chose another position: "
       move1 = gets.chomp.to_i
     end
     board[move1 - 1] = "X" 
    
     moves += 1
     puts "moves: #{moves}"
     break if (winner(board) || moves == 5)
    
    
  end

  def 





  def history_moves

  end

  def played_matches
  end
  def won_matches
  end

  def lost_matches
  end
end

loop do
  print_board board

 puts "Player's 1 move: "
 move1 = gets.chomp.to_i
 while board[move1 - 1] != move1
   puts "That position is taken!"
   puts "Chose another position: "
   move1 = gets.chomp.to_i
 end
 board[move1 - 1] = "X" 

 moves += 1
 puts "moves: #{moves}"
 break if (winner(board) || moves == 5)

 puts "Player's 2 move: "
 move2 = gets.chomp.to_i
 while board[move2 - 1] != move2
   puts "That position is taken!"
   puts "Chose another position: "
   move2 = gets.chomp.to_i
 end
 board[move2 - 1] = "O" 

 break if winner board
end