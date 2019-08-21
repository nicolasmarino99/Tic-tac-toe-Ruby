# frozen_string_literal: true

class Game
  def winner_orientation(board)
    winner = false

    # test rows
    3.times do |row|
      row_array = []
      3.times do |col|
        row_array << board[row * 3 + col]
      end
      winner = is_winner(row_array)
    end

    # test columns
    3.times do |row|
      col_array = []
      3.times do |col|
        col_array << board[col * 3 + row]
      end
      winner = is_winner(col_array)
    end

    # test diagonals
    diagonals = [
      [board[0], board[4], board[8]],
      [board[2], board[4], board[6]]
    ]
    diagonals.each do |diagonal|
      winner = is_winner(diagonal)
    end

    winner
  end

  private

  def winner(orientation)
    winner = ''
    if orientation.all? { |cell| cell == 'X' }
      winner = 'X'
    elsif orientation.all? { |cell| cell == 'O' }
      winner = 'O'
    end
    winner
  end
end
