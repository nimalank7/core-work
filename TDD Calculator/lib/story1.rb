=begin
As a mathematician,
So that I can properly enjoy the fruits of my calculations,
I would like my calculator to output answers to my calculations in the format "the answer
is xxxxxx"
=end
class Calculator
  def multiply(x, y)
    puts "The answer is " + (x * y).to_s
  end
  def square(x)
    multiply(x, x)
  end
end
