require_relative '../lib/game.rb'

print "player 1 name: "
player1 = gets.chomp
print "player 2 name: "
player2 = gets.chomp

game = Game.new(player1, player2)


game.play