=begin
Transform the following first hashes into the second hashes:

{a: 1, b: 2, c: 3} => {"1"=>"a", "2"=>"b", "3"=>"c"}
=end
def rearrange_strings(input)
  new_hash = {}
  input.each do |letter, number|
    new_hash[number.to_s] = letter.to_s
  end
  new_hash
end
puts rearrange_strings({a: 1, b: 2, c: 3})
