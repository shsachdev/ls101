def counter(word)
  alphabet = ("a".."z").to_a
  counter = 0
  word.chars.each do |char|
    if alphabet.include?(char.downcase)
      counter += 1
    end
  end
  counter
end


def word_sizes(str)
  arr = str.split(" ")
  hash = {}
  arr.each do |word|
    if hash.key?(counter(word))
      hash[counter(word)] = hash[counter(word)] + 1
    else
      hash[counter(word)] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
