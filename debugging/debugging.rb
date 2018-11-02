=begin Debug this exercise

def say_hello(name)
  "hello #(name)"
end
=end
=begin fixed solution:
def say_hello(name)
  "hello #{name}"
end
=end

=begin Debug this exercise
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
=end
def encode(plaintext, key)
  puts "before"
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  puts cipher.to_s
  puts "after"
  ciphertext_chars = plaintext.chars.map do |char|
    puts (65 + cipher.find_index(char)).chr
    (65 + cipher.find_index(char)).chr
  end
  puts ciphertext_chars.join # This only goes up to H
end
def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  puts cipher
  puts "About to begin iterating over the loop"
  plaintext_chars = ciphertext.chars.map do |char|
    puts "We are iterating over #{char}"
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end
