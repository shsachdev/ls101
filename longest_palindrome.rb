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


def longest_palindrome(str)
  palindromes = all_substrings(str).select {|string| string == string.reverse}
  sizes = palindromes.map do |string|
    string.size
  end
  palindromes[sizes.index(sizes.max)].size
end

# Find the length of the longest substring in the given string that is the same in reverse.

# As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.

# If the length of the input string is 0, return value must be 0.

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9


# pseudocode

# input = string, output = boolean

# test-cases: no mention of case. if input string.size == 0, then return value must be zero.

# Algorithm

# 1. Find all substrings of the input string.
  # Define a substrings method.


# 2. Find the subset of those substrings that are the same in reverse.
  # Just invoke the reverse method.

# 3. Return the size of that longest substring.
