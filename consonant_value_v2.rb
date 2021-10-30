# PEDAC

# Given a lowercase string that has alphabetic characters only and no spaces, return the highest value 
# of consonant substrings. Consonants are any letters of the alphabet except "aeiou"

# We shall assign the following values: a = 1, b = 2, c = 3, .... z = 26

# assume string comes in lowercase

# Data Structures

# input = string, output = integer

# Algorithm for find_consonant_value

# 1. Declare a constant VOWELS containing vowels in the alphabet
# 2. Declare a constant alphavet containing all letters in the alphabet
# 3. Convert the string to an array
# 4. Find all non-vowel containing substrings
  # Declare helper function to do this
# 5. Score each substring using ALPHABET index
# 6. Return max score

# Algorithm for find_non_vowel_substrings

# Description: Given an array, return in a new array all non-vowel containing substrings

# input = array, output = array

# 1. Declare an empty array called substrings
# 2. Declare an empty string called current_subtr
# 2. Iterate through input array
  # If the element is a non-vowel, current_subtr = current_subtr + element. 
  # Then add current_subtr to substrings
  
  # If the element is a vowel, current_subtr is set to an empty string again.

  # 3. Return the array of non-vowel containing subtrings



VOWELS = ["a", "e", "i", "o", "u"]
ALPHABET = ("a".."z").to_a

def find_consonant_value(str)
  if str.length == 0
    return 0
  end
  non_vowel_substrings = find_non_vowel_substrings(str.chars)
  if non_vowel_substrings.length == 0
    return 0
  end
  scores = non_vowel_substrings.map do |str|
    find_score(str)
  end
  scores.max
end


# Given a string, this returns that string's score via the rule mentioned
# input = string, output = int
def find_score(string)
  sum = 0
  string.chars.each do |char|
    sum += ALPHABET.find_index(char) + 1
  end
  sum
end

def find_non_vowel_substrings(arr)
  substrings = []
  current_subtr = ""
  arr.each do |char|
    if VOWELS.include?(char)
      current_subtr = ""
    else  
      current_subtr = current_subtr + char 
      substrings << current_subtr
    end
  end
  return substrings
end

# Examples

p find_consonant_value("zodiacs") == 26

p find_consonant_value("strength") == 57

p find_consonant_value("") == 0

p find_consonant_value("a") == 0

p find_consonant_value("z") == 26



