require_relative "./player.rb"
require_relative "./board.rb"

class Game
  def initialize
    @board = Board.new
    @player1 = Player.new(@board.board, "X", "Player1")
    @player2 = Player.new(@board.board, "O", "Player2")
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

    if @board.winner?
      puts "The winner is '#{@board.winner}'"
    else  
      puts "I's a tie."
    end

  end
end
