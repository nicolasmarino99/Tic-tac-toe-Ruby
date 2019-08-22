require_relative '../lib/game_layout.rb'
require_relative '../lib/game.rb'

game = Game.new

if game.winner?
  puts game.winner
else 
  puts "No winner"
end


# moves = 0

# loop do
#   print_board board

#   puts "Player's 1 move: "
#   move1 = gets.chomp.to_i
#   while board[move1 - 1] != move1
#     puts "That position is taken!"
#     puts "Chose another position: "
#     move1 = gets.chomp.to_i
#   end
#   board[move1 - 1] = "X" 

#   moves += 1
#   puts "moves: #{moves}"
#   break if (winner(board) || moves == 5)

#   puts "Player's 2 move: "
#   move2 = gets.chomp.to_i
#   while board[move2 - 1] != move2
#     puts "That position is taken!"
#     puts "Chose another position: "
#     move2 = gets.chomp.to_i
#   end
#   board[move2 - 1] = "O" 

#   break if winner board
# end
