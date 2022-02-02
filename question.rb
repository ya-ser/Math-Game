require './game'

class Question

  def initialize 
    @answer = -1
  end

  def gen_question
    # num = Random.new
    num1 = rand(100) 
    num2 = rand(100)  
    @answer = num1 + num2
    "What is #{num1} plus #{num2} equal to? "
  end

  attr_reader :answer
end