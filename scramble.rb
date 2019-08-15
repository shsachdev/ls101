def char_occurence(arr)
  hash = {}
  arr.each do |char|
    if hash.include?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  hash
end

# input = arr of characters, output = hash


def scramble(str1, str2)
  characters_in_str1 = str1.chars
  characters_in_str2 = str2.chars
  hash_str1 = char_occurence(characters_in_str1)
  hash_str2 = char_occurence(characters_in_str2)
  verification = hash_str2.map do |key, value|
    if hash_str1.include?(key) && value <= hash_str1[key]
      true
    else
      false
    end
  end
  if verification.include?(false)
    false
  else
    true
  end
end


# Write method scramble(str1,str2) that returns true if a portion of str1 characters
# can be rearranged to match str2, otherwise returns false.

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

# pseudocode

# inputs = string, output = boolean

# test-cases: no caps, no punctuation etc

# Algorithm

# 1. Get all the characters from str1.

# 2. Get all the characters from str2.

# 3. Create hash1 of each char and occurence in str1.

# 4. Crease hash2 of each char and occurence in str2.

# 5. Compare hashes; if hash1 include each key in hash2 and value is equal
# or greater, then return true.
