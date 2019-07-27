def word_sizes(string)
  word_size = string.split(" ").map do |word|
    word.size
  end
  unique_size = word_size.uniq
  hash = {}
  unique_size.each do |elem|
    hash[elem] = word_size.count(elem)
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# input is string, output is a hash
# first, create an array with each word as an element.
# invoke the map method on that array and return on each iteration the size of each element. store the return value of the map method, call it array_size.
# now, we have an array called array_size. array_size is perhaps of the form: [1,2,2,3,4,7,8]
# we need to turn array_size into a hash, with the keys being a result of the unique method invoked on array_size.
# so, for ex, invoking uniq on array_size would return => [1,2,3,4,7,8]. call this array_unique.
# array_unique has our keys. to get the values, we simply need to get a count of how many times each element appears in array_size.
  # for ex, since 2 appears twice, it would get a count of 2.
# then, we initialize an empty hash,  iterate through array_unique and add each element as a key to the hash, and use the count as our value.
# finally, we return this hash.
