# Write a method that takes an array of consecutive (increasing) letters as
# input and that returns the missing letter in the array.

ALPHABET = ("a".."z").to_a

def find_missing_letter(arr)
  indexes = arr.map {|letter| ALPHABET.index(letter.downcase)}
  values = indexes.map.with_index do |num, idx|
    if idx == indexes.size - 1
      1
    else
      indexes[idx + 1] - num
    end
  end
  needed_idx = values.each_index.select {|i| values[i] != 1}[0]
  if arr[0] == arr[0].upcase
    ALPHABET[indexes[needed_idx] + 1].upcase
  else
    ALPHABET[indexes[needed_idx] + 1]
  end
end

puts find_missing_letter(["a","b","c","d","f"]) == "e"
puts find_missing_letter(["O","Q","R","S"]) == "P"
puts find_missing_letter(["b","d"]) == "c"
puts find_missing_letter(["b","d", "e"]) == "c"
puts find_missing_letter(["a", "b", "d"]) == "c"

# input = array, output = string

# Algorithm

# 1. Iterate through arr and map each letter to its index in ALPHABET.
# 2. Iterate through returned array and map it to result of subtracting current num and next num.
# 3. Get index of the number that is not 1.
# 4. Use this index to return corresponding number in ALPHABET array.
