class Turn 

  attr_accessor :turn

  def initialize
    @turn = 1
  end

  def addTurn
    @turn += 1
  end
end

# newGame = Turn.new
# puts newGame.turn

# newGame.addTurn
# puts newGame.turn
