=begin
Transform the following first hashes into the second hashes:

{a: 1, b: 2} => {a: 2, b: 3}
=end
def augment(input)
  input.each do |letter, number|
    input[letter] = number + 1
  end
  input
end
puts augment({a: 1, b: 2})
