require_relative "./headcount.rb"

class Coin
  COIN_SIDES = ["Heads", "Tails"]
  attr_reader :value
  def initialize
    @value = ""
  end
  def flip
    @value = COIN_SIDES[rand(2)]
  end
end
