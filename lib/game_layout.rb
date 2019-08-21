# frozen_string_literal: true
require 'paint'

class GameLayout
  def initialize
    @board = [1, 2, 3,
      4, 5, 6,
      7, 8, 9]
  end
  
  def print_board
    puts "     ╷   ╷   "
    puts "   #{Paint['1', :red, :bright]} | #{@board[1]} | #{@board[2]} "
    puts '  ───┼───┼───'
    puts "   #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '  ───┼───┼───'
    puts "   #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts "     ╵   ╵   "
    puts ""
  end
end

board = GameLayout.new

board.print_board
