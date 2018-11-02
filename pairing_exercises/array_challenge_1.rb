=begin
Transform the following first arrays into the second entities:

[1, 2, 3, 4, 5] => [2, 3, 4, 5, 6]
=end
def transform_array(input)
  input.map do
    |n|
    n + 1
  end
end
puts transform_array([1, 2, 3, 4, 5])
