# Problem

# Count all the occuring characters in a string. If the string is empty, then the result should be an empty
# hash.

# Assumption: Case matters 

# Assumption: String will only contain letters. No special characters or numbers.

# Assumption: The resulting hash must be sorted by alphabetical order of the chars

# Data Structures

# input = string, output = hash

# Algorithm

# 1. Convert string to array
# 2. Declare empty hash call it counter
# 3. Iterate through array
  # At each iteration, check if hash includes char as a key. 
  # if it does, increment its value by 1.
  # if it doesn't, add the char to the hash and make its value 1.
# 4. Return sorted hash



def count_chars(str)
  arr_chars = str.chars 
  counter = {}
  arr_chars.each do |char|
    if counter.keys.include?(char)
      counter[char] += 1
    else    
      counter[char] = 1
    end
  end
  counter.sort.to_h
end

# Examples / Test Cases

p count_chars("aba") == {"a" => 2, "b" => 1}
p count_chars("AAAAAAba") == {"A" => 6, "a" => 1, "b" => 1}
p count_chars("aabbccddee") == {"a" => 2, "b" => 2, "c" => 2, "d" => 2, "e" => 2}
p count_chars("") == {}