def word_sizes(str)
  arr = str.split(" ")
  hash = {}
  arr.each do |word|
    if hash.key?(word.size)
      hash[word.size] = hash[word.size] + 1
    else
      hash[word.size] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}


# Write a method that takes a string with one or more space
# separated words and returns a hash that shows the number of words of different sizes.
