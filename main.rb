require './game'

class Main
  def initialize
    newGame = Game.new
    newGame.start
  end
end

puts "Here we go!"
start = Main.new