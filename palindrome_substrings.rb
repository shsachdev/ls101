def palindromes(str)
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
