require 'pry'
require './game'
require './player'
require './question'

player1 = "Player 1"
player2 = "Player 2"
name1 = Player.new(player1)
name2 = Player.new(player2)

# set current player
game = Game.new(name1, name2)

while game.players[0].life > 0 and game.players[1].life > 0 do
  # generate question and answer
  puts "--- NEW TURN ---"
  question = Question.new
  print "#{game.current_player.name}: #{question.gen_question}"
  answer = question.answer

  # prompt for answer
  input = gets.chomp.to_i

  # check answer
  if (input != answer)
    game.subtract_life
    game.report_life
  else
    puts "YES! You are correct."
  end

  # change turn
  game.change_player
end