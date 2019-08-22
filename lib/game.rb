# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

class Game
  attr_reader :winner
  def initialize()
    @giboard = Board.new()
    @winner = ''
    @player_one_mark = player_two_mark
    @player_two_mark = player_two_mark
    @player_one = Player.new("Mauricio")
    @player_one = Player.new("Nico")
  end

  def winner?
    return true if check_array?('rows')
    return true if check_array?('columns')

    diagonals = [
      [@board[0], @board[4], @board[8]],
      [@board[2], @board[4], @board[6]]
    ]
    diagonals.each do |diagonal|
      return true if check_consecutive?(diagonal)
    end

    false
  end

  private

  def check_array?(orientation)
    3.times do |row|
      array = []
      3.times do |col|
        array << if orientation == 'columns'
                   @board[col * 3 + row]
                 else
                   @board[row * 3 + col]
                 end
      end
      return true if check_consecutive?(array)
    end
    false
  end

  def check_consecutive?(orientation)
    if orientation.all? { |cell| cell == @player_one_mark }
      @winner = @player_one_mark
      return true
    elsif orientation.all? { |cell| cell == @player_two_mark }
      @winner = @player_two_mark
      return true
    end
    false
  end
end
