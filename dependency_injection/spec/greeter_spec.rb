require "greeter"
describe Greeter do
  let(:kernel) {double :kernel, gets: "Nim\n"}
  it "outputs 'Hello, Nim'" do
    greeter = Greeter.new
    expect{greeter.greet(kernel)}.to output("What is your name?\nHello, Nim\n").to_stdout
  end
end
