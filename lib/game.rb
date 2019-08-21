# frozen_string_literal: true

class Game
  attr_reader :winner
  def initialize
    @board = [1, 2, 3,
              4, 5, 6,
              7, 8, 9]
    @winner = ''
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
    if orientation.all? { |cell| cell == 'X' }
      @winner = 'X'
      return true
    elsif orientation.all? { |cell| cell == 'O' }
      @winner = 'O'
      return true
    end
    false
  end
end
