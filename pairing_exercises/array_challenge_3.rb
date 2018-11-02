=begin
Transform the following first arrays into the second entities:

[1, 3, 5, 4, 2] => [2, 3, 4, 5, 6]
=end
def sort_augment(input)
  input.sort.map do |n|
    n + 1
  end
end
puts sort_augment([1, 3, 5, 4, 2]).to_s
