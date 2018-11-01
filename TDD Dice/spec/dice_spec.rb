require 'dice.rb'
describe Dice do
  it "throws a random number between 1 and 6 inclusive" do
    dice = Dice.new
    possible_outputs = [1, 2, 3, 4, 5, 6]
    actual_outputs = []
    40.times do
      actual_outputs.push(dice.roll)
    end
    unique_actual_outputs = actual_outputs.uniq
    expect(unique_actual_outputs.length).to eq possible_outputs.length
  end
end
