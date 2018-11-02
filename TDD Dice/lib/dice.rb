=begin
As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice
at the same time

=end
class Dice
  def roll(n)
    roll_values = []
    n.times do
      value = 1 + rand(6)
      roll_values << value
    end
    roll_values
  end
end
