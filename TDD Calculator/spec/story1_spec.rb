require 'story1.rb'
describe Calculator do
  it 'expects to multiply 2 numbers together and give a number' do
    calculator = Calculator.new
    expect{calculator.multiply(4, 5)}.to output("The answer is 20\n").to_stdout
  end
  it 'expects to square 2 numbers together and give a number' do
    calculator = Calculator.new
    expect{calculator.square(4)}.to output("The answer is 16\n").to_stdout
  end
end
