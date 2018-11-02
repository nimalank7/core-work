=begin
Transform the following first hashes into the second hashes:

{a: 2, b: 5, c: 1} => [1, 2, 5]
=end
def values_array(input)
  input.values.sort
end
puts values_array({a: 2, b: 5, c: 1})
