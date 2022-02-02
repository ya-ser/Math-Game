require './player'

class Game

  def initialize (p1, p2)
    @players = [p1, p2]
    @current_index = 0
    @current_player = @players[@current_index]
  end
  
  def subtract_life
    @current_player.life -= 1
    if @current_player.life == 0
      puts "#{@current_player.name}, you lose!" 
      puts "--- GAME OVER ---\nGood bye!"
    else
      puts "Seriously? No!"
    end
  end

  def report_life
    puts "Life Remaining ==> Player 1: #{@players[0].life}/3  Player 2:#{@players[1].life}/3"
  end
  
  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
  
  attr_reader :report_life, :players, :current_player
end