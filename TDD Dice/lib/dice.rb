=begin
As a dice app developper,
So that I give players a good game experience
I want the dice roll to be randomly picked
O: dice
M: roll
O: game?
m: play?
=end
class Dice
  def roll
    1 + rand(6)
  end
end
