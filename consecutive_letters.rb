# Check if a string contains consecutive letters as they appear in the English alphabet 
# and if each letter occurs only once

# string will contain at minimum one letter. lowercase or uppercase? lowercase
# return a boolean 
# is it true, if it's a substring? or does it need to be the whole string?

# data structures

# input = string, output = boolean

# Algorithm

# 1/ Check length of string. If length is 1, return true.
# 2/ Define an array called letters containing all letters in the alphabet
# 3/ Convert string to array, call it chars_arr
# 4/ Get all the indexes of each letter in chars_arr from letters and append to new array called indexes
# 5/ If an index appears twice or more, return false.
# 6/ Otherwise, sort indexes and verify that they go in order from bottom to top without missing a number. If this
    # is the case, return true. 



# PEDAC
# P = Understand the problem
# Example / Test Cases
# Data Structure
# Algorithm
# Code

# function

LETTERS = ("a".."z").to_a

def contains_consec_letters(str)
  if str.length == 1
    return true
  end

  chars_arr = str.split('')

  indexes = chars_arr.map do |char|
    LETTERS.index(char)
  end

  if indexes.uniq != indexes
    return false 
  else 
    # sort indexes and and check that this sequence is an artihmentic one with a step of 1
    is_sequence_arithmetic?(indexes.sort)
  end
end

# Algorithm

# 1/ iterate through array and starting from the second element, get different between current element 
    # and prior element. 
# 2/ Append each difference to new array called differences.
# 3/ return true if differences only contains the number 1

def is_sequence_arithmetic?(arr)
  differences = []
  arr.each_with_index do |val, idx|
    if idx != 0
      differences << val - arr[idx - 1]
    end
  end
  differences.each do |num|
    if num != 1
      return false 
    end
  end
  return true
end

# test cases

p contains_consec_letters("r") == true
p contains_consec_letters("abc") == true
p contains_consec_letters("abbc") == false
p contains_consec_letters("dabc") == true