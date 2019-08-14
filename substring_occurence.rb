def substring_test(str1, str2)
end

# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

p substring_test('Something', 'Fun') ==  false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

# pseudocode

# input = 2 strings, output = boolean

# test-cases: case does not matter.

# Algorithm

# 1. find all substrings of 1st string. store in array.

# 2. find all substrings of 2nd string. store in array.

# 3. compare the two arrays; if overlap, store in duplicates (array).
  # iterate through either array (say 1st one), and see if it includes substring in other array.

#4. if duplicates.size > 0, return true.
