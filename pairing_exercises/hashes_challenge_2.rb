=begin
Transform the following first hashes into the second hashes:

{a: 2, b: 5, c: 1} => {a: 1, b: 2, c: 5}
=end
def transform(input)
  sorted_values = input.values.sort
  tracker = 0
  input.each do |letter, number|
    input[letter] = sorted_values[tracker]
    tracker += 1
  end
  input
end
puts transform({a: 2, b: 5, c: 1})
