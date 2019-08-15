def scramble(str1, str2)
  characters_in_str1 = str1.chars
  characters_in_str2 = str2.chars
  arr = characters_in_str2.select {|char| characters_in_str1.include?(char)}
  if arr.size == characters_in_str2.size
    true
  else
    false
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

# just check if each char that is in str2, is also in str1.
  # if yes, true. else, false.
