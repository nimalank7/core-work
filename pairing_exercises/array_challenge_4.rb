=begin
Transform the following first arrays into the second entities:

[1, 2, 3, 4, 5] => 15 (the sum)
=end
def sum_array(input)
  total = 0
  input.each do |n|
    total += n
  end
  total
end
puts sum_array([1, 2, 3, 4, 5])
