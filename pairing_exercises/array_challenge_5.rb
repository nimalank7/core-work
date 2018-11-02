=begin
Transform the following first arrays into the second entities:

[1, 2, 3, 4, 5] => 30 (double the sum)
=end
def double_sum(input)
  total = 0
  input.each do
    |n|
    total += n * 2 # n*2 then adding onto total
  end
total
end
puts double_sum([1, 2, 3, 4, 5])
