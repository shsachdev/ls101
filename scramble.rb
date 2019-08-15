def arr_join(array)
  array.join
end


def scramble(str1, str2)
  permutations_str1 = str1.chars.permutation.to_a
  cleaned = permutations_str1.map do |sub_arr|
    arr_join(sub_arr)
  end
  p cleaned
  if cleaned.include?(str2)
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

# 1. Find all re-arrangements of str1 => rearranged_arr
  #

# 2. If rearranged_arr.include?(str2) => true, else false
