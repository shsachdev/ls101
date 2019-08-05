def ordered_count(str)
  char_array = str.chars
  p char_array
  char_hash = {}
  char_array.each do |char|
    if char_hash.key?(char) != true
      char_hash[char] = 1
    else
      char_hash[char] += 1
    end
  end
  p char_hash
end





# Count the number of occurrences of each character
# and return it as a list of tuples in order of appearance.

# input = string, output = hash
# get characters of string into array. (str.chars)
# add each unique character as a key to the intialized hash.

p ordered_count("abracadabra") == {"a": 5, "b": 2 , "r": 2, "c": 1, "d": 1}
