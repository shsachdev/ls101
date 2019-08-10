def weirdcase(string)
  arr = string.chars
  i = 0
  cleaned = arr.map do |char|
    if char == " "
      i = i + 1
      char
    elsif i.even?
      i = i + 1
      char.capitalize
    else
      i = i + 1
      char.downcase
    end
  end
  p cleaned.join
end

p weirdcase("String") == "StRiNg"
p weirdcase("Weird string case") == "WeIrD StRiNg CaSe"

# let's first do this problem w assumption that weirdcase is not destructive.

# Write a function weirdcase that accepts a string, and returns
# the same string with all even indexed characters in each word upper cased, and
# all odd indexed characters in each word lower cased.

#pseudocode

# input = string, output = string

# destructive method. (mutates the caller.)

# Algorithm

# 1. iterate through each character in string.
  # capitalize each even-indexed character, downcase each odd-indexed character.
  # do not count the index of a space.
# return the string.
