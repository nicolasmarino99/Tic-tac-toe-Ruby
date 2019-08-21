require_relative '../lib/game_layout.rb'
require_relative '../lib/game.rb'

game = Game.new

if game.winner?
  puts game.winner
else 
  puts "No winner"
end



win = false



# def winner(board)
#   winner = false
  
#   def test_rows
#     3.times do |row|
#       row_array = []
#       3.times do |col|
#         row_array << board[row * 3 + col]
#       end
#       if row_array.all? { |cell| cell == 'X' }
#         winner = "X"
#       elsif row_array.all? { |cell| cell == 'O' }
#         winner = "O"
#       end
#     end
#   end

#   # test columns
#   3.times do |row|
#     col_array = []
#     3.times do |col|
#       col_array << board[col * 3 + row]
#     end
#     if col_array.all? { |cell| cell == 'X' }
#       winner = "X"
#     elsif col_array.all? { |cell| cell == 'O' }
#       winner = "O"
#     end
#   end

#   #test diagonals
#   diagonals = [
#                [board[0], board[4], board[8]],
#                [board[2], board[4], board[6]]
#               ]
#   diagonals.each do |diagonal|
#     if diagonal.all? { |cell| cell == 'X' }
#       winner = "X"
#     elsif diagonal.all? { |cell| cell == 'O' }
#       winner = "O"
#     end
#   end

#   winner
# end

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
