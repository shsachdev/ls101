def downcase(array)
  array.map do |char|
    char.downcase
  end
end


def find_substrings(string)
  letters = string.chars
  substrings = []
  start_tracker = 0
  loop do
    end_tracker = letters.size - 1
    loop do
      break if start_tracker == end_tracker
      substrings << letters[start_tracker..end_tracker]
      end_tracker = end_tracker - 1
    end
    start_tracker = start_tracker + 1
    break if start_tracker == letters.size - 1
  end
  substrings.map do |sub_arr|
    downcase(sub_arr)
  end
end


def substring_test(str1, str2)
  if str1 == "" || str2 == ""
    return false
  end
  str1_substrings = find_substrings(str1)
  str2_substrings = find_substrings(str2)
  duplicates = []
  str1_substrings.each do |sub_arr|
    duplicates << sub_arr if str2_substrings.include?(sub_arr)
  end
  if duplicates.size == 0
    return false
  else
    return true
  end
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
  # define a new method substring.
  # two "trackers": one to keep track of start, the other to keep track of end.
  # tracker_1 starts at S. tracker_2 starts at g. tracker_2 works its way to o.
    # once we have all those substrings. tracker_1 starts at o. etc
  # datastructures: get chars of string, store in array.

# 2. find all substrings of 2nd string. store in array.

# 3. compare the two arrays; if overlap, store in duplicates (array). (and check that substring size is greater than 1)
  # iterate through either array (say 1st one), and see if it includes substring in other array.

#4. if duplicates.size > 0, return true.
