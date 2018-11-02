require 'dice'
describe Dice do
  it "throws a random number between 1 and 6 inclusive" do
    dice = Dice.new
    possible_outputs = [1, 2, 3, 4, 5, 6]
    actual_outputs = []
    100.times {actual_outputs << dice.roll(1)}
    expect(actual_outputs.uniq.length).to eq possible_outputs.length
  end
  it "throws a random number between 1 and 6 inclusive" do
    dice = Dice.new
    srand(23454)
    10.times { 1 + rand(6) }
    srand(23454)
    10.times { expect(dice.roll(1)[0]).to eq(1 + rand(6)) }
  end
  it "rolls multiple dice" do
    dice = Dice.new
    expect(dice.roll(4).length).to eq 4
  end
  it "outputs results" do
    expect{ dice.roll(4) }.to output("Hello!").to_stdout
  end
end
