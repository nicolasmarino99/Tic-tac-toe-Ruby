require_relative "./lib/player.rb"
require_relative "./lib/board.rb"

class Game
  def initialize
    @board = Board.new
    @player1 = Player.new(@board)
    @player2 = Player.new(@board)
  end

  def play
    loop do
      @board.print

      @player1.move
      break if @board.winner? || @board.tie?
      
      @board.print
      
      @player2.move
      break if @board.winner? || @board.tie?
    end
  end
end
