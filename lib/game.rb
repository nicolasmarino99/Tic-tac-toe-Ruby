require_relative "./player.rb"
require_relative "./board.rb"

class Game
  def initialize(player1, player2)

    @player1 = Player.new(player1, "X")
    @player2 = Player.new(player2, "O")

    @board = Board.new(@player1, @player2)

  end

  def play
    loop do
      @board.print

      @player1.move(@board.board)
      break if @board.winner? || @board.tie?
      
      @board.print
      
      @player2.move(@board.board)
      break if @board.winner? || @board.tie?
    end

    if @board.winner?
      puts ""
      puts "The winner is '#{@board.winner}'!"
    else  
      puts "I's a tie."
    end

    @board.print

  end
end
