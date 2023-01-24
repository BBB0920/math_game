class Player
  attr_accessor :name, :score 

  def initialize(name)
    @name = name
    @score = 3
  end

  def answered_wrong
    @score -= 1
  end
end

# player1 = Player.new("Lyon")  # Make the name enterable by user 
# player2 = Player.new("Opponent")

# puts player1.name
# puts player1.score

# puts player2.name
# puts player2.score

# player1.answered_wrong
# player1.answered_wrong
# puts player1.score

# player2.answered_wrong
# puts player2.score