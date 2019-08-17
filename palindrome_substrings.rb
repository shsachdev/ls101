def first_substring(str)
  first_substrings = []
  str.each_char.with_index do |char, index|
    first_substrings << str[0..index]
  end
  first_substrings
end

def all_substrings(str)
  arr_substrings = []
  loop do
    arr_substrings << first_substring(str)
    str[0] = ""
    break if str == ""
  end
  arr_substrings.flatten
end


def one_char_killer(word)
  if word.size == 1
    false
  else
    true
  end
end

def palindromes(str)
  substrings = all_substrings(str).select {|string| string.reverse == string && one_char_killer(string)}
end

# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it
# does backwards. The return value should be arranged in the same sequence as the substrings
# appear in the string. Duplicate palindromes should be included multiple times.

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


# pseudocode

# input = string, output = array

# test-cases: there are no uppercase chars so case redundant.

# Algorithm

# 1. find all substrings of an input string.

# 2. find subset that are palindromes, and return as an array.

  # reject all substrings that only have 1 character.
