vowels = ["a", "e", "i", "o", "u"]

CONSONANTS = ("a".."z").to_a.reject {|letter| vowels.include?(letter.downcase)}

def double_consonants(str)
  array_words = str.chars
  result = []
  array_words.each do |char|
    if CONSONANTS.include?(char.downcase)
      result << char * 2
    else
      result << char
    end
  end
  result.join
end

# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# pseudocode

# input = string, output = string

# Test-cases: case insensitive.

# Algorithm

# 1. Initiliaze an array full of consonants. Constant variable => CONSONANTS.

# 2. Turn string into array, call it array_words.

# 3. iterate through array using each. If char is a paert of CONSONANTS, double it
  # and append to some new array called result.

# 4. return result.join
