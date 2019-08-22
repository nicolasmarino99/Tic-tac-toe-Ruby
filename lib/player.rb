# frozen_string_literal: true

class Player

  def initialize(board, mark, name)
    @board = board
    @mark = mark
    @name = name
  end

  def move
    print "Player '#{@name}' move: "
    move = gets.chomp.to_i
    while @board[move - 1] != move
      puts "That position is taken!"
      print "Chose another position: "
      move = gets.chomp.to_i
    end
    @board[move - 1] = @mark 
  end

end