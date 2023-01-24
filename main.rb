require_relative 'player.rb'
require_relative 'question.rb'
require_relative 'turn.rb'

player1 = Player.new("Lyon")  # Stretch: Make the name enterable by user 
player2 = Player.new("Opponent")

currentTurn = Turn.new

puts "New Game begins!"
while player1.score > 0 && player2.score > 0
  if currentTurn.turn % 2 == 0
    currentPlayer = player2
  else
    currentPlayer = player1
  end
  
  question = Question.new
  puts "------Turn #{currentTurn.turn}------"
  puts "#{currentPlayer.name}: #{question.equation(question.num1, question.sign, question.num2)}"
  player_answer = gets.chomp.to_i

  if (player_answer == question.answer(question.num1, question.sign, question.num2))
    puts "YES! You are correct."
  else 
    puts "Bzzt! Sorry, that is incorrect!"
    currentPlayer.answered_wrong
  end
  
  puts "#{player1.name}: #{player1.score}/3 vs #{player2.name}: #{player2.score}/3"
  
  currentTurn.addTurn
end

player1.score > player2.score ? winner = player1 : winner = player2

puts "The winner is #{winner.name}!"
puts "------GAME OVER------"