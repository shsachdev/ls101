def substrings_at_start(str)
  substrings_beginning = []
  str.each_char.with_index do |char, index|
    substrings_beginning << str[0..index]
  end
  substrings_beginning
end


def find_substrings(str)
  all_substrings = []
  size = str.size
  loop do
    break if str == ""
    all_substrings << substrings_at_start(str)
    str[0] = ""
  end
  all_substrings.flatten
end


# Given a string, find all its possible substrings. (without using a loop)

p find_substrings("Tar") == ["T", "Ta", "Tar", "a", "ar", "r"]

p find_substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Algorithm

# 1. Create a method that returns a list of all substrings of a string that start
    # at the beginning of the original string.


# 2. Invoke that method on string passed in. Then, delete first character, and invoke method on remaining string.
  # keep doing this until string is empty.


# 3. Store, flatten, and return this new array.
