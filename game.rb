require './question'
require './player'

class Game
  attr_accessor :game_over
  def initialize
    @game_over = false
    puts "Enter name for Player 1"
    p_1_name = gets.chomp # .chomp removes the '\n' from the end of our new line
    @player_1 = Player.new(p_1_name)
    puts "Enter name for Player 2"
    p_2_name = gets.chomp
    @player_2 = Player.new(p_2_name)
    @turn = @player_1
  end

  def set_turn
    if @turn == @player_1
      @turn = @player_2
    else
      @turn = @player_1
    end
  end

  def start
    until @game_over do
      puts "-------------New Turn-------------"
      q_details = Question.new
      q_details.print_question(@turn.name)
      player_ans = gets.chomp
      if (q_details.check_answer(player_ans)) #returns true or false
        puts "Nice work Player #{@turn.name}"
        puts "Score: #{@player_1.name}: #{@player_1.lives}/3 & #{@player_2.name}: #{@player_2.lives}/3"
      else
        puts "Seriously? First time?"
        # subtract lives
        @turn.lives = @turn.lives - 1
        if @turn.lives < 1 
          puts "-------------GAME OVER-------------"
          @game_over = true
        else
          puts "Score: #{@player_1.name}: #{@player_1.lives}/3 & #{@player_2.name}: #{@player_2.lives}/3"
        end
      end
      set_turn
    end
  end
end