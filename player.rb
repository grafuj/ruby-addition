class Player
  attr_accessor :name, :lives
  def initialize incoming_name
    @name = incoming_name
    @lives = 3
  end
end