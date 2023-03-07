require './game'

class Question
  def initialize
    #pick two numbers from 1 to 20
    @a = rand(19) + 1
    @b = rand(19) + 1
    #puts question
    # puts "#{player_1[:name]}: What does #{a} plus #{b} equal?"
    @question_array = [@a, @b]
  end
  
  def check_answer (input)
    input.to_i == @a + @b #returns true or false
  end
  
  def print_question (player)
    puts "#{player}: What does #{@a} plus #{@b} equal?"
  end
end
