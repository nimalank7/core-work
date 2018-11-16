require_relative "./display_answers.rb"
class Calculator
  attr_reader :display
  def initialize(display = Display_Answers)
    @display = display.new
  end

  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def display_answer(answer)
    display.print_answer(answer)
  end

end
