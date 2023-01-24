class Question

  attr_accessor :num1, :num2, :equationArr, :sign
  
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @equationArr = ['+', '-', '*', '/']
    @sign = equationArr[rand(0..3)]
  end

  def equation(num1, sign, num2)
    num1.to_s + " " + sign + " " + num2.to_s + " = ?"
  end

  def answer(num1, sign, num2)
    num1.send( sign.to_sym, num2)
  end
end

# question = Question.new
# puts question.num1
# puts question.sign
# puts question.num2
# puts question.equation(question.num1, question.sign, question.num2)
# puts question.answer(question.num1, question.sign, question.num2)
# question.equation



