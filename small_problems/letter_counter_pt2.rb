
ALPHABET = ("a".."z").to_a

def word_sizes(string)
  clean_chars = []
  string.chars.each do |char|
    if char.downcase == " "
      clean_chars << char
    elsif ALPHABET.include?(char.downcase)
      clean_chars << char
    end
  end
  word_size = clean_chars.join.split(" ").map do |word|
    word.size
  end
  unique_size = word_size.uniq
  hash = {}
  unique_size.each do |elem|
    hash[elem] = word_size.count(elem)
  end
  hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
